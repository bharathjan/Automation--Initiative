// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS.security;

import org.xbill.DNS.*;

import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.Signature;
import java.util.*;

// TODO: Auto-generated Javadoc
/**
 * A class that verifies DNS data using digital signatures contained in DNSSEC
 * SIG records. DNSSECVerifier stores a set of trusted keys. Each specific
 * verification references a cache where additional secure keys may be found.
 * 
 * @see Verifier
 * @see DNSSEC
 * 
 * @author Brian Wellington
 */

public class DNSSECVerifier implements Verifier {

	/** The trusted keys. */
	private Map trustedKeys;

	/**
	 * Creates a new DNSSECVerifier.
	 */
	public DNSSECVerifier() {
		trustedKeys = new HashMap();
	}

	/**
	 * Adds the specified key to the set of trusted keys.
	 * 
	 * @param key
	 *            the key
	 */
	public synchronized void addTrustedKey(DNSKEYRecord key) {
		Name name = key.getName();
		List list = (List) trustedKeys.get(name);
		if (list == null)
			trustedKeys.put(name, list = new LinkedList());
		list.add(key);
	}

	/**
	 * Adds the specified key to the set of trusted keys.
	 * 
	 * @param name
	 *            the name
	 * @param alg
	 *            the alg
	 * @param key
	 *            the key
	 */
	public void addTrustedKey(Name name, int alg, PublicKey key) {
		Record rec;
		rec = KEYConverter.buildRecord(name, Type.DNSKEY, DClass.IN, 0, 0,
				DNSKEYRecord.Protocol.DNSSEC, alg, key);
		if (rec != null)
			addTrustedKey((DNSKEYRecord) rec);
	}

	/**
	 * Find matching key.
	 * 
	 * @param it
	 *            the it
	 * @param algorithm
	 *            the algorithm
	 * @param footprint
	 *            the footprint
	 * @return the public key
	 */
	private PublicKey findMatchingKey(Iterator it, int algorithm, int footprint) {
		while (it.hasNext()) {
			DNSKEYRecord keyrec = (DNSKEYRecord) it.next();
			if (keyrec.getAlgorithm() == algorithm
					&& keyrec.getFootprint() == footprint)
				return KEYConverter.parseRecord(keyrec);
		}
		return null;
	}

	/**
	 * Find trusted key.
	 * 
	 * @param name
	 *            the name
	 * @param algorithm
	 *            the algorithm
	 * @param footprint
	 *            the footprint
	 * @return the public key
	 */
	private synchronized PublicKey findTrustedKey(Name name, int algorithm,
			int footprint) {
		List list = (List) trustedKeys.get(name);
		if (list == null)
			return null;
		return findMatchingKey(list.iterator(), algorithm, footprint);
	}

	/**
	 * Find cached key.
	 * 
	 * @param cache
	 *            the cache
	 * @param name
	 *            the name
	 * @param algorithm
	 *            the algorithm
	 * @param footprint
	 *            the footprint
	 * @return the public key
	 */
	private PublicKey findCachedKey(Cache cache, Name name, int algorithm,
			int footprint) {
		RRset[] keysets = cache.findAnyRecords(name, Type.DNSKEY);
		if (keysets == null)
			return null;
		RRset keys = keysets[0];
		return findMatchingKey(keys.rrs(), algorithm, footprint);
	}

	/**
	 * Find key.
	 * 
	 * @param cache
	 *            the cache
	 * @param name
	 *            the name
	 * @param algorithm
	 *            the algorithm
	 * @param footprint
	 *            the footprint
	 * @return the public key
	 */
	private PublicKey findKey(Cache cache, Name name, int algorithm,
			int footprint) {
		PublicKey key = findTrustedKey(name, algorithm, footprint);
		if (key == null && cache != null)
			return findCachedKey(cache, name, algorithm, footprint);
		return key;
	}

	/**
	 * Verify sig.
	 * 
	 * @param set
	 *            the set
	 * @param sigrec
	 *            the sigrec
	 * @param cache
	 *            the cache
	 * @return the int
	 */
	private int verifySIG(RRset set, RRSIGRecord sigrec, Cache cache) {
		PublicKey key = findKey(cache, sigrec.getSigner(),
				sigrec.getAlgorithm(), sigrec.getFootprint());
		if (key == null)
			return DNSSEC.Insecure;

		Date now = new Date();
		if (now.compareTo(sigrec.getExpire()) > 0
				|| now.compareTo(sigrec.getTimeSigned()) < 0) {
			System.err.println("Outside of validity period");
			return DNSSEC.Failed;
		}
		byte[] data = DNSSEC.digestRRset(sigrec, set);

		byte[] sig;
		String algString;

		switch (sigrec.getAlgorithm()) {
		case DNSSEC.RSAMD5:
			sig = sigrec.getSignature();
			algString = "MD5withRSA";
			break;
		case DNSSEC.DSA:
		case DNSSEC.DSA_NSEC3_SHA1:
			sig = DSASignature.fromDNS(sigrec.getSignature());
			algString = "SHA1withDSA";
			break;
		case DNSSEC.RSASHA1:
		case DNSSEC.RSA_NSEC3_SHA1:
			sig = sigrec.getSignature();
			algString = "SHA1withRSA";
			break;
		default:
			return DNSSEC.Failed;
		}

		try {
			Signature s = Signature.getInstance(algString);
			s.initVerify(key);
			s.update(data);
			return s.verify(sig) ? DNSSEC.Secure : DNSSEC.Failed;
		} catch (GeneralSecurityException e) {
			if (Options.check("verboseexceptions"))
				System.err.println("Signing data: " + e);
			return DNSSEC.Failed;
		}
	}

	/**
	 * Attempts to verify an RRset. This does not modify the set.
	 * 
	 * @param set
	 *            The RRset to verify
	 * @param cache
	 *            The Cache where obtained secure keys are found (may be null)
	 * @return The new security status of the set
	 * @see RRset
	 */
	public int verify(RRset set, Cache cache) {
		Iterator sigs = set.sigs();
		if (Options.check("verbosesec"))
			System.out.print("Verifying " + set.getName() + "/"
					+ Type.string(set.getType()) + ": ");
		if (!sigs.hasNext()) {
			if (Options.check("verbosesec"))
				System.out.println("Insecure");
			return DNSSEC.Insecure;
		}
		while (sigs.hasNext()) {
			RRSIGRecord sigrec = (RRSIGRecord) sigs.next();
			if (verifySIG(set, sigrec, cache) == DNSSEC.Secure) {
				if (Options.check("verbosesec"))
					System.out.println("Secure");
				return DNSSEC.Secure;
			}
		}
		if (Options.check("verbosesec"))
			System.out.println("Failed");
		return DNSSEC.Failed;
	}

}