/**
 *
 */
package com.mifos.pages;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.ibm.icu.text.NumberFormat;
import com.mifos.common.TenantsUtils;
import com.mifos.testing.framework.webdriver.LazyWebElement;

//import org.jopendocument.dom.spreadsheet.MutableCell;
//import org.jopendocument.dom.spreadsheet.Sheet;
//import org.jopendocument.dom.spreadsheet.SpreadSheet;

public class FrontPage extends MifosWebPage {

	// Set<String> setAccuralTransactionID = new TreeSet<String>();
	Set<String> setAccuralTransactionID = new LinkedHashSet<String>();
	Set<String> setAccuralTransactionType = new LinkedHashSet<String>();
	// TreeSet<String>();
	static String value = "";
	public String rowval;
	public boolean ishideAccuralsChecked = true;
	boolean isTransactionTabSelected;
	public boolean isaccuralsTypeTransaction = true;
	int transactionIDIndex = 0;
	private boolean istransactionIdIndexAssigned = true;
	public String currentUrl ="";

	// WebDriver driver = new ChromeDriver();

	/**
	 * Returns targeted excel sheet located
	 * 
	 * @return
	 */
	public String getLoginExcelSheetPath() {
		// TODO Auto-generated method stub
		return getResource("loginfolder");
	}

	public String getProductExcelSheetPath() {
		// TODO Auto-generated method stub
		return getResource("productfolder");
	}

	public String getClientExcelSheetPath() {
		// TODO Auto-generated method stub
		return getResource("clientfolder");
	}

	/**
	 * Method returns date format of cell2 from a targeted excel sheet
	 * 
	 * @param cell2
	 * @return
	 * @throws ParseException
	 */
	public static String parseDate(XSSFCell cell2) throws ParseException {

		DateFormat dateFormat = new SimpleDateFormat("dd MMMM yyyy");
		Date date = cell2.getDateCellValue();
		return dateFormat.format(date);
	}

	/**
	 * method converts key value pairs present in excel sheets into a hash map.
	 * 
	 * @param excelSheetPath
	 *            :- Location of excel sheet
	 * 
	 * @param excelsheet
	 *            :- Given excel sheet name
	 * 
	 * @param sheetname
	 *            :- sheet name of an excel sheet
	 * 
	 * @return
	 * @throws Exception
	 */
	public static Map<String, String> parseExcelSheet(String excelSheetPath,
			String excelsheet, String sheetname) throws Exception {

		Map<String, String> excelVlaue = new LinkedHashMap<String, String>();
		XSSFSheet sheet = null;
		try {
			XSSFCell cell1 = null;
			XSSFCell cell2 = null;
			FileInputStream file = new FileInputStream(new File(excelSheetPath
					+ "/" + excelsheet));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			sheet = workbook.getSheet(sheetname);
			// System.out.println("Opened file name :" + excelsheet
			// + " with sheet " + sheetname);

			Iterator<Row> rowIterator = sheet.iterator();
			while (rowIterator.hasNext()) {
				Row row = rowIterator.next();

				Iterator<Cell> cellIterator = row.cellIterator();
				while (cellIterator.hasNext()) {
					cell1 = (XSSFCell) cellIterator.next();
					// System.out.println("Cell One ... key="
					// + cell1.getRichStringCellValue());
					String key = cell1.getRichStringCellValue().toString();

					if (!cellIterator.hasNext()) {
						System.out.println("No Such Element");
					} else {
						// cell iterator by calling its next method
						cell2 = (XSSFCell) cellIterator.next();

						switch (cell2.getCellType()) {
						case Cell.CELL_TYPE_NUMERIC:
							if(key.contains("changecargevalue")){
								double i = (double) cell2.getNumericCellValue();
								value = String.valueOf(i);}
								else{
									int i = (int) cell2.getNumericCellValue();
									value = String.valueOf(i);}
							
							// System.out.println("Cell Two ... value=" +
							// value);
							if (HSSFDateUtil.isCellDateFormatted(cell2)) {
								value = parseDate(cell2);
								excelVlaue.put(key, value);

							} else {
								excelVlaue.put(key, value);

							}

							break;

						case Cell.CELL_TYPE_STRING:
							// / System.out.println("Cell Two ... value="
							// + cell2.getRichStringCellValue());
							value = cell2.getRichStringCellValue().toString();
							excelVlaue.put(key, value);
							break;
						}
					}
				}
			}

		} catch (Exception e) {
			throw new Exception("invalid excel sheet or sheet name \n"
					+ excelsheet + sheetname);

		}
		return excelVlaue;
	}

	public static Map<String, String> parseExcelSheet1(String excelSheetPath,
			String excelsheet, String sheetname) throws Exception {

		Map<String, String> excelVlaue = new LinkedHashMap<String, String>();
		XSSFSheet sheet = null;
		try {
			XSSFCell cell1 = null;
			XSSFCell cell2 = null;
			FileInputStream file = new FileInputStream(new File(excelSheetPath
					+ "/" + excelsheet));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			sheet = workbook.getSheet(sheetname);
			// System.out.println("Opened file name :" + excelsheet
			// + " with sheet " + sheetname);

			Iterator<Row> rowIterator = sheet.iterator();
			while (rowIterator.hasNext()) {
				Row row = rowIterator.next();

				Iterator<Cell> cellIterator = row.cellIterator();
				while (cellIterator.hasNext()) {
					cell1 = (XSSFCell) cellIterator.next();
					// System.out.println("Cell One ... key="
					// + cell1.getRichStringCellValue());
					String key = cell1.getRichStringCellValue().toString();

					if (!cellIterator.hasNext()) {
						System.out.println("No Such Element");
					} else {
						// cell iterator by calling its next method
						cell2 = (XSSFCell) cellIterator.next();

						switch (cell2.getCellType()) {
						case Cell.CELL_TYPE_NUMERIC:
							double i = (double) cell2.getNumericCellValue();
							value = String.valueOf(i);
							// System.out.println("Cell Two ... value=" +
							// value);
							if (key.equals("mobilenumber")) {
								value = new BigDecimal(
										cell2.getNumericCellValue())
										.toPlainString();
							}
							if (HSSFDateUtil.isCellDateFormatted(cell2)) {
								value = parseDate(cell2);
								excelVlaue.put(key, value);

							} else {
								excelVlaue.put(key, value);

							}

							break;

						case Cell.CELL_TYPE_STRING:
							// / System.out.println("Cell Two ... value="
							// + cell2.getRichStringCellValue());
							value = cell2.getRichStringCellValue().toString();
							excelVlaue.put(key, value);
							break;
						}
					}
				}
			}

		} catch (Exception e) {
			throw new Exception("invalid excel sheet or sheet name \n"
					+ excelsheet + sheetname);

		}
		return excelVlaue;
	}

	/**
	 * Method enters login credential from target excel sheet into login page
	 * 
	 * @param loginExcelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Throwable
	 */
	public void setupLogin(String loginExcelSheetPath, String excelSheetName,
			String sheetName) throws Throwable {
		try {

			Map<String, String> loginMap = parseExcelSheet(loginExcelSheetPath,
					excelSheetName, sheetName);

			insertValues(loginMap);

			clickButton(getResource("signin"));
			Thread.sleep(getResourceKey("extraLargeWait"));
		} catch (Exception ioe) {
			ioe.printStackTrace();
		}

	}

	/**
	 * Method navigates to client page
	 * 
	 * @throws Throwable
	 */
	public void clientNavigation() throws Throwable {
		try {

			MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl() + "clients");
			Thread.sleep(getResourceKey("mediumWait"));

			clickButton(getResource("clickoncreateclient_wait"));
			Thread.sleep(getResourceKey("mediumWait"));

		} catch (Exception ioe) {
			ioe.printStackTrace();
		}
	}

	public void groupNavigation() throws Throwable {
		try {
			MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+"creategroup");
			Thread.sleep(getResourceKey("mediumWait"));

		} catch (Exception ioe) {
			ioe.printStackTrace();
		}
	}
	
	public void centerNavigation() throws Throwable {
		try {
			MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+"createcenter");
			Thread.sleep(getResourceKey("mediumWait"));

		} catch (Exception ioe) {
			ioe.printStackTrace();
		}
	}
	
	public void VillageNavigation() throws Throwable {
		try {
			MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+"createvillage");
			Thread.sleep(getResourceKey("mediumWait"));

		} catch (Exception ioe) {
			ioe.printStackTrace();
		}
	}
	
	
	public void setupGroup(String clientExcelSheetPath, String excelSheetName,
			String sheetName) throws Throwable {
	
			Map<String, String> clientDetailsMap = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(clientDetailsMap);
//			verifySuccessMessage("clickonmorebutton", "More");
		}
	
	/**
	 * Method enters values from target excel sheet into Client page
	 * 
	 * @param clientExcelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Throwable
	 */
	public void setupClient(String clientExcelSheetPath, String excelSheetName,
			String sheetName) throws Throwable {
		try {
			Map<String, String> clientDetailsMap = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(clientDetailsMap);
			clickButton(getResource("submitclient"));
			Thread.sleep(getResourceKey("mediumWait"));

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Method verifies client has been created successfully from target excel
	 * sheet
	 * 
	 * @param excelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Exception
	 */
	public void verifyClient(String excelSheetPath, String excelSheetName,
			String sheetName) throws Exception {
		// TODO Auto-generated method stub
		Map<String, String> clientDetailsMap = parseExcelSheet(excelSheetPath,
				excelSheetName, sheetName);
		verifyPartialSuccessMessage("verifyclient",
				clientDetailsMap.get("Verify"), "xpath");
		// verifySuccessMessage("verifyclient", clientDetailsMap.get("Verify"));

	}

	/**
	 * Method inserts a value, To creates a new loan, Approves and Disburse a
	 * given loan from target excel sheet
	 * 
	 * @param clientExcelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Throwable
	 */
	public void setupNewLoan(String clientExcelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {

		Map<String, String> newLoanDetailsMap = parseExcelSheet(
				clientExcelSheetPath, excelSheetName, sheetName);
		insertValues(newLoanDetailsMap);
		Thread.sleep(getResourceKey("largeWait"));
		currentUrl = getWebDriver().getCurrentUrl();
     
	}

	/**
	 * Method navigates to loan product page
	 * 
	 * @param productExcelSheetPath
	 * @param excelsheet
	 * @param sheetName
	 * @throws Throwable
	 */
	public void productNavigation(String productExcelSheetPath,
			List<String> excelsheet, String sheetName) throws Throwable {
		try {

			MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl() + "createloanproduct");
			Thread.sleep(getResourceKey("mediumWait"));
		} catch (Exception ioe) {
			ioe.printStackTrace();
		}

	}

	/**
	 * Method inserts a value to create a loan product from a target excel sheet
	 * 
	 * @param productExcelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Throwable
	 */
	public void setupLoanProduct(String productExcelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {
		try {
			Map<String, String> productDetailsMap = parseExcelSheet(
					productExcelSheetPath, excelSheetName, sheetName);

			insertValues(productDetailsMap);

			clickButton(getResource("submitloanproduct"));
			Thread.sleep(getResourceKey("smallWait"));
			((JavascriptExecutor) getWebDriver())
					.executeScript("scroll(500,0);");
			verifySuccessMessage("editloanproduct", "Edit");
			Thread.sleep(getResourceKey("mediumWait"));

		} catch (Exception ioe) {
			ioe.printStackTrace();
		}

	}

	/**
	 * Method verifies loan product has been created successfully from a
	 * targeted excel sheet
	 * 
	 * @param productExcelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Exception
	 */
	public void verifyProduct(String productExcelSheetPath,
			String excelSheetName, String sheetName) throws Exception {
		// TODO Auto-generated method stub
		Map<String, String> productDetailsMap = parseExcelSheet(
				productExcelSheetPath, excelSheetName, sheetName);
		verifySuccessMessage("verifyloanproduct",
				productDetailsMap.get("verifyloanproduct"));
	}

	/**
	 * Method parse to decimal value.
	 * 
	 * @param input
	 * @return
	 * @throws ParseException
	 */
	public double parseDecimal(String input) throws ParseException {
		NumberFormat numberFormat = NumberFormat.getNumberInstance(Locale
				.getDefault());
		ParsePosition parsePosition = new ParsePosition(0);
		Number number = numberFormat.parse(input, parsePosition);

		if (parsePosition.getIndex() != input.length()) {
			throw new ParseException("Invalid input", parsePosition.getIndex());
		}
		return number.doubleValue();
	}

	/**
	 * Method verifies Summary,Repayments Schedule,Transactions tab & accounting
	 * details from a targeted excel sheet
	 * 
	 * @param clientExcelSheetPath
	 * @param excelSheetName
	 * @param sheetname
	 * @throws InterruptedException
	 * @throws IOException
	 * @throws ParseException
	 */
	public void verifyLoanTabData(String clientExcelSheetPath,
			String excelSheetName, String sheetname)
			throws InterruptedException, IOException, ParseException {

		int sheetIndex = 0;
		int rowCount = 0;
		int firstrow=1;
		int lastrow=1;
		try {
			FileInputStream file = new FileInputStream(new File(
					clientExcelSheetPath + "\\" + excelSheetName));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			XSSFSheet sheet = workbook.getSheet(sheetname);

			if (sheetname.equals("Summary")) {
				sheetIndex = 2;
			} else if (sheetname.equals("Repayment Schedule")) {
				sheetIndex = 4;
			} else if (sheetname.equals("Future Schedule")) {
			    sheetIndex = 5; 
			}
			else if (sheetname.equals("Transactions")) {
				sheetIndex = 6;
			} else if (sheetname.equals("Floating Interest Rates")) {
				sheetIndex = 10;
			}
			if (!isTransactionTabSelected ) {
				
				new WebDriverWait(getWebDriver(), 120).until(
				        ExpectedConditions.elementToBeClickable(
				            By.xpath("//a[contains(.,'" + sheetname + "')]")))
				                .click();
				
				// Before reading transaction id need to un-check the
				// hideAccurals
				// button for periodic scenarios
				if (sheetname.equals("Transactions") && !ishideAccuralsChecked) {
					LazyWebElement accrualCheck = getElement(getResource("hideaccruals"));
					if (!accrualCheck.isSelected()) {
						clickButton(getResource("hideaccruals"));
						Thread.sleep(getResourceKey("largeWait"));
					}
				}
			}
			rowCount = sheet.getLastRowNum() - sheet.getFirstRowNum();
			boolean iteration = true;
			int rowNo = 1;
			for (int xlRowCount = 1; xlRowCount <= rowCount; xlRowCount++) {
				if (sheetname.equals("Floating Interest Rates")) {
					xlRowCount = 2;
				}
				int xlColumnPointer = 0;
				if (sheetname.equals("Transactions")) {
					xlColumnPointer = 2;
				}

				List<WebElement> applicationCol = null;
				String Accrual = null;
				if (sheetname.equals("Summary")
						|| sheetname.equals("Repayment Schedule")
						|| sheetname.equalsIgnoreCase("Transactions")
						|| sheetname.equals("Floating Interest Rates")
						|| sheetname.equals("Future Schedule")) {

					if (sheetname.equals("Transactions")
							&& !isaccuralsTypeTransaction) {

						Accrual = getWebDriver()
								.findElement(
										By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div["
												+ sheetIndex
												+ "]/div/table/tbody/tr["
												+ xlRowCount + "]/td[4]"))
								.getText();
						if (Accrual.equals("Accrual")) {
							setAccuralTransactionType
									.add(getWebDriver()
											.findElement(
													By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div["
															+ sheetIndex
															+ "]/div/table/tbody/tr["
															+ xlRowCount
															+ "]/td[1]"))
											.getText());
						} else {
							setAccuralTransactionID
									.add(getWebDriver()
											.findElement(
													By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div["
															+ sheetIndex
															+ "]/div/table/tbody/tr["
															+ xlRowCount
															+ "]/td[1]"))
											.getText());
						}
					}

					// System.out.println("Col count  " +
					// applicationCol.size());
					if (sheetname.equals("Transactions")) {
						boolean rowMatchSuccess = true;
						int failRowCnt = 0;
						int failColCnt = 0;
						String expected = null;
						String actual = null;
						double screenVal = 0.0;
						int counter=0;
						DateFormat dateFormat = new SimpleDateFormat(
								"dd MMMM yyyy");

						applicationCol = getWebDriver()
								.findElements(
										By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div["
												+ sheetIndex
												+ "]/div/table/tbody/tr["
												+ xlRowCount + "]/td"));
							List<XLCellElement> xlRow = getColumnDetails(
									xlColumnPointer, xlRowCount,
									applicationCol, sheet, sheetname);

							
							
							for (int appRow = 1; appRow <= rowCount; appRow++) {
								
								do{
									counter++;
									if(counter==22){
										Thread.sleep(2000);
									}
								applicationCol = getWebDriver()
										.findElements(
												By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div["
														+ sheetIndex
														+ "]/div/table/tbody/tr["
														+ appRow + "]/td"));
								}while(applicationCol.isEmpty() && counter<25);
									
								
				if (!(applicationCol.get(2).getText().equals(dateFormat.format((Date) xlRow.get(0).value))
				       && applicationCol.get(3).getText().equals((String) xlRow.get(1).value)
				       && parseDecimal(applicationCol.get(4).getText())== parseDecimal((String) xlRow.get(2).value))){
					rowMatchSuccess=false;
									continue;
									
								}
				rowMatchSuccess=true;
								for (int xlCol = 2; xlCol < applicationCol
										.size(); xlCol++) {
									String a= ((String) xlRow
											.get(1).value);
									
									String textVal = applicationCol.get(xlCol)
											.getText();

									switch (xlRow.get(xlCol - 2).type) {
									case "null":
										break;
									case "date":
										if (!textVal.equals(dateFormat
												.format((Date) xlRow
														.get(xlCol - 2).value))) {
											rowMatchSuccess = false;
											failRowCnt = appRow;
											failColCnt = xlCol;
											expected = dateFormat
													.format((Date) xlRow
															.get(xlCol - 2).value);
											actual = textVal;
										}
										break;
									case "decimal":
										
										if ((textVal != null)
												&& !(textVal.trim().equals("")))
											screenVal = parseDecimal(textVal);
										if (screenVal != parseDecimal((String) xlRow
												.get(xlCol - 2).value)) {
											rowMatchSuccess = false;
											failRowCnt = appRow;
											failColCnt = xlCol;
											expected = (String) xlRow
													.get(xlCol - 2).value;
											actual = textVal;
										}
										break;
									case "string":
										if (textVal.contains("$")) {
											textVal = textVal.substring(
													textVal.indexOf(" ") + 1,
													textVal.length());
										}
										if (!textVal.equals((String) xlRow
												.get(xlCol - 2).value)) {
											rowMatchSuccess = false;
											failRowCnt = appRow;
											failColCnt = xlCol;
											expected = (String) xlRow
													.get(xlCol - 2).value;
											actual = textVal;

										}
										break;
									}
									if (!rowMatchSuccess) {
										Assert.fail("Tab Name:" + sheetname
												+ " Row number:" + failRowCnt
												+ " Column number:" + failColCnt
												+ " Expected result:" + expected
												+ " Actual result:" + actual);
									}
								
								}
								
									break;
								
							}
							if (!rowMatchSuccess) {
								Assert.fail("In Tab Name:" + sheetname
										+ " Row having values "+dateFormat.format((Date) xlRow.get(0).value)+
										" "+(String) xlRow.get(1).value+" "+(String) xlRow.get(2).value+
										" not found");
							}

						

					}
				
					else{
						applicationCol = getWebDriver()
								.findElements(
										By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div["
												+ sheetIndex
												+ "]/table/tbody/tr["
												+ xlRowCount + "]/td"));
					verifyColumnDetails(xlColumnPointer, xlRowCount,
							applicationCol, sheet, sheetname);
					}

				} else if (sheetname.contains("Acc_")) {
					
					applicationCol = getWebDriver()
						.findElements(
								By.xpath(".//*[@id='main']/div[2]/div/div/div/div/div/div[4]/table/tbody/tr["
										+ xlRowCount +"]/td"));
				xlColumnPointer = 6;
				boolean rowMatchSuccess = true;
				int failRowCnt = 0;
				int failColCnt = 0;
				String expected = null;
				String actual = null;
				int counter=0;
				List<XLCellElement> xlRow =null;
				if (sheetname.contains("Acc_Periodic")) {

					
					
					if (iteration) {
						int result[] = verifyAccrualData(
								clientExcelSheetPath, excelSheetName,
								sheetname);
						firstrow = result[0];
						lastrow = result[1];
						rowCount=lastrow-firstrow+1;
						iteration = false;
					} else
						firstrow++;
					
					
					 xlRow = getColumnDetails(
							xlColumnPointer, firstrow,
							applicationCol, sheet, sheetname);
				}
				
				else{
				 xlRow = getColumnDetails(
						xlColumnPointer, xlRowCount,
						applicationCol, sheet, sheetname);
				}
				
			
				for (int appRow = 1; appRow <= rowCount; appRow++) {
					
					do{
						counter++;
						if(counter==22){
							Thread.sleep(2000);
						}
					applicationCol = getWebDriver()
							.findElements(
									By.xpath(".//*[@id='main']/div[2]/div/div/div/div/div/div[4]/table/tbody/tr["
										+ appRow + "]/td"));
					
					}while(applicationCol.isEmpty() && counter<25);
						
	if (!( applicationCol.get(6).getText().equals((String) xlRow.get(0).value)))
	{
		rowMatchSuccess=false;
		continue;
						
					}

	                rowMatchSuccess=true;
					for (int xlCol = 7; xlCol < applicationCol.size()-2; xlCol++) {
						String textVal = applicationCol.get(xlCol)
								.getText();
						DateFormat dateFormat = new SimpleDateFormat(
								"dd MMMM yyyy");
						switch (xlRow.get(xlCol - 6).type) {
						case "null":
							break;
						case "date":
							if (!textVal
									.equals(dateFormat.format((Date) xlRow
											.get(xlCol - 6).value))) {
								rowMatchSuccess = false;
								failRowCnt = appRow;
								failColCnt = xlCol;
								expected = dateFormat.format((Date) xlRow
										.get(xlCol - 6).value);
								actual = textVal;
							}
							break;
						case "decimal":
							double screenVal = 0.0;
							if ((textVal != null)
									&& !(textVal.trim().equals("")))
								screenVal = parseDecimal(textVal);
							if (screenVal != parseDecimal((String) xlRow
									.get(xlCol - 6).value)) {
								rowMatchSuccess = false;
								failRowCnt = appRow;
								failColCnt = xlCol;
								expected = (String) xlRow.get(xlCol - 6).value;
								actual = textVal;
							}
							break;
						case "string":
							if (textVal.contains("$")||textVal.contains("₹")) {
								textVal = textVal.substring(
										textVal.indexOf(" ") + 1,
										textVal.length());
							}
							if (!textVal.equals((String) xlRow
									.get(xlCol - 6).value)) {
								rowMatchSuccess = false;
								failRowCnt = appRow;
								failColCnt = xlCol;
								expected = (String) xlRow.get(xlCol - 6).value;
								actual = textVal;
								
							}
							break;
						}
						if (!rowMatchSuccess) {
							Assert.fail("Tab Name:" + sheetname + " Row number:"
									+ failRowCnt + " Column number:" + failColCnt
									+ " Expected result:" + expected
									+ " Actual result:" + actual);

						}
					}
					break;
				}
				if (!rowMatchSuccess) {
					Assert.fail("In Tab Name:" + sheetname
							+ " Row having values "+(String) xlRow.get(0).value+" "+(String) xlRow.get(1).value+
							" not found");

				}

			}


			}
		} catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		} catch (NoSuchElementException e) {
			Assert.fail(" Unable to click \n");
		}
	}

	public void verifyOtherTabData(String clientExcelSheetPath,
			String excelSheetName, String sheetname)throws InterruptedException, IOException, ParseException 
	{
		int rowCount=0;
	
		try {
			FileInputStream file = new FileInputStream(new File(
					clientExcelSheetPath + "\\" + excelSheetName));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			XSSFSheet sheet = workbook.getSheet(sheetname);
			rowCount = sheet.getLastRowNum() - sheet.getFirstRowNum();
			/*if(sheetname.equals("Tranche Others"))
			{
			new WebDriverWait(getWebDriver(), 120).until(
			        ExpectedConditions.elementToBeClickable(
			            By.xpath("//a[contains(.,'Loan Tranche Details')]")))
			                .click();
			}*/
			int xlColumnPointer=0;
			List<WebElement> applicationCol = null;
			for (int xlRowCount = 1; xlRowCount <= rowCount; xlRowCount++) {
				if(sheetname.contains("Loan Others Details"))
				{
					
					int table=1; int rou=0;
					if(sheetname.equals("Loan Others Details3")) { table=3; rou=xlRowCount+1;
					applicationCol=getWebDriver()
							.findElements(
									By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[2]/form/div[2]/div["+table+"]/table/tbody/tr["+rou+"]/td"));
				
                    List<XLCellElement> xlRow = getColumnDetails(
                            xlColumnPointer, xlRowCount,
                            applicationCol, sheet, sheetname);
                 verifyTransactionData(clientExcelSheetPath,
                            excelSheetName, sheetname,xlRow,rowCount,applicationCol);}
					else{
					if(sheetname.equals("Loan Others Details1")) { table=1; rou=xlRowCount; }
					if(sheetname.equals("Loan Others Details2")) { table=2; rou=xlRowCount; }
					if(sheetname.equals("Loan Others Details3")) { table=3; rou=xlRowCount+1;}
					applicationCol=getWebDriver()
							.findElements(
									By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[2]/form/div[2]/div["+table+"]/table/tbody/tr["+rou+"]/td"));
				
                    
				}
				}
				
				if(sheetname.contains("Approve Others Details"))
				{
					int table=1; int rou=0;
					if(sheetname.equals("Approve Others Details4")) { table=4; rou=xlRowCount+1;
					applicationCol=getWebDriver()
							.findElements(
									By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[2]/form/div[3]/div[2]/div["+table+"]/table/tbody/tr["+rou+"]/td"));
					List<XLCellElement> xlRow = getColumnDetails(
                            xlColumnPointer, xlRowCount,
                            applicationCol, sheet, sheetname);
                 verifyTransactionData(clientExcelSheetPath,
                            excelSheetName, sheetname,xlRow,rowCount,applicationCol);
					}
					else{
					if(sheetname.equals("Approve Others Details1")) { table=1; rou=xlRowCount; }
					if(sheetname.equals("Approve Others Details2")) { table=2; rou=xlRowCount; }
					if(sheetname.equals("Approve Others Details3")) { table=3; rou=xlRowCount+1;}
					
					applicationCol=getWebDriver()
							.findElements(
									By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[2]/form/div[3]/div[2]/div["+table+"]/table/tbody/tr["+rou+"]/td"));
					}
					}
				
				if(sheetname.equals("Tranche Others"))
				{
					new WebDriverWait(getWebDriver(), 120).until(
					        ExpectedConditions.elementToBeClickable(
					            By.xpath("//a[contains(.,'Loan Tranche Details')]")))
					                .click();
					
					int rou=xlRowCount+1;
				
				applicationCol=getWebDriver()
						.findElements(
								By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div[10]/div/table[2]/tbody/tr["+rou+"]/td"));
				
				}
				if(sheetname.equals("Charges Others Details"))
				{
					new WebDriverWait(getWebDriver(), 120).until(
					        ExpectedConditions.elementToBeClickable(
					        		By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[3]/div[4]/div/ul/li[13]/a")))
					                .click();
					
					int rou=xlRowCount+1;
				
				applicationCol=getWebDriver()
						.findElements(
								By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div[13]/div/table/tbody/tr["+rou+"]/td"));
				
				List<XLCellElement> xlRow = getColumnDetails(
                        xlColumnPointer, xlRowCount,
                        applicationCol, sheet, sheetname);
				verifyChargeData(clientExcelSheetPath,
                        excelSheetName, sheetname,xlRow,rowCount,applicationCol);
				}
				if(!(sheetname.equals("Loan Others Details3")||sheetname.equals("Approve Others Details4")
						||(sheetname.equals("Charges Others Details"))))
				{
				verifyColumnDetails(xlColumnPointer, xlRowCount,
				applicationCol, sheet, sheetname);
				}
	}
		}catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		} catch (NoSuchElementException e) {
			Assert.fail(" Unable to click \n");
		}
	}
	
	
	
    public void verifyTransactionData(String clientExcelSheetPath,
            String excelSheetName, String sheetname,List<XLCellElement> xlRow,int rowCount,List<WebElement> applicationCol)throws InterruptedException, IOException, ParseException 
    {

    boolean rowMatchSuccess = true;
    int failRowCnt = 0;
    int failColCnt = 0;
    String expected = null;
    String actual = null;
    double screenVal = 0.0;
    int counter=0;
    int xlColumnPointer=0;
    DateFormat dateFormat = new SimpleDateFormat(
            "dd MMMM yyyy");

    try {
        for (int appRow = 1; appRow <= rowCount; appRow++) {
            
            
                int wou=appRow+1;
                
               if( sheetname.equals("Loan Others Details3")){
            applicationCol = getWebDriver()
                    .findElements(
                            By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[2]/form/div[2]/div[3]/table/tbody/tr["+wou+"]/td"));
            }
               if( sheetname.equals("Approve Others Details4")){
                   applicationCol = getWebDriver()
                           .findElements(
                                   By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[2]/form/div[3]/div[2]/div[4]/table/tbody/tr["+wou+"]/td"));
                   }
           
               
            
            
            
if (!((applicationCol.get(0).getText().equals((String) xlRow.get(0).value)))){
rowMatchSuccess=false;
                continue;
                
            }
rowMatchSuccess=true;
            for (int xlCol = 1; xlCol < applicationCol
                    .size(); xlCol++) {
               
                String textVal = applicationCol.get(xlCol)
                        .getText();
                switch (xlRow.get(xlCol).type) {
                case "null":
                    break;
                case "date":
                    if (!textVal.equals(dateFormat
                            .format((Date) xlRow
                                    .get(xlCol).value))) {
                        rowMatchSuccess = false;
                        failRowCnt = appRow;
                        failColCnt = xlCol;
                        expected = dateFormat
                                .format((Date) xlRow
                                        .get(xlCol).value);
                        actual = textVal;
                    }
                    break;
                case "decimal":
                    
                    if ((textVal != null)
                            && !(textVal.trim().equals("")))
                        screenVal = parseDecimal(textVal);
                    if (screenVal != parseDecimal((String) xlRow
                            .get(xlCol).value)) {
                        rowMatchSuccess = false;
                        failRowCnt = appRow;
                        failColCnt = xlCol;
                        expected = (String) xlRow
                                .get(xlCol).value;
                        actual = textVal;
                    }
                    break;
                case "string":
                    if (!textVal.equals((String) xlRow
                            .get(xlCol).value)) {
                        rowMatchSuccess = false;
                        failRowCnt = appRow;
                        failColCnt = xlCol;
                        expected = (String) xlRow
                                .get(xlCol).value;
                        actual = textVal;

                    }
                    break;
                }
                if (!rowMatchSuccess) {
                    Assert.fail("Tab Name:" + sheetname
                            + " Row number:" + failRowCnt
                            + " Column number:" + failColCnt
                            + " Expected result:" + expected
                            + " Actual result:" + actual);
                }
            
            }
            
                break;
            
        }
        if (!rowMatchSuccess) {
            Assert.fail("In Tab Name:" + sheetname
                    + " values not found");
        }
    
    } catch (Exception e) {
        Assert.fail(" Unable to check \n");
    }
    
    }

    public void verifyChargeData(String clientExcelSheetPath,
            String excelSheetName, String sheetname,List<XLCellElement> xlRow,int rowCount,List<WebElement> applicationCol)throws InterruptedException, IOException, ParseException 
    {

    boolean rowMatchSuccess = true;
    int failRowCnt = 0;
    int failColCnt = 0;
    String expected = null;
    String actual = null;
    double screenVal = 0.0;
    int counter=0;
    int xlColumnPointer=0;
    DateFormat dateFormat = new SimpleDateFormat(
            "dd MMMM yyyy");

    try {
        for (int appRow = 1; appRow <= rowCount; appRow++) {
            
            
                int wou=appRow+1;
                
            
           
               if( sheetname.equals("Charges Others Details")){
                   applicationCol = getWebDriver()
                           .findElements(
                                   By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div[13]/div/table/tbody/tr["+wou+"]/td"));
                   }
            
            
            
if (!((applicationCol.get(0).getText().equals((String) xlRow.get(0).value))
		&&(applicationCol.get(4).getText().equals(dateFormat
                .format((Date) xlRow.get(4).value))))){
rowMatchSuccess=false;
                continue;
                
            }
rowMatchSuccess=true;
            for (int xlCol = 1; xlCol < applicationCol
                    .size(); xlCol++) {
               
                String textVal = applicationCol.get(xlCol)
                        .getText();
                switch (xlRow.get(xlCol).type) {
                case "null":
                    break;
                case "date":
                	
                    if (!textVal.equals(dateFormat
                            .format((Date) xlRow
                                    .get(xlCol).value))) {
                        rowMatchSuccess = false;
                        failRowCnt = appRow;
                        failColCnt = xlCol;
                        expected = dateFormat
                                .format((Date) xlRow
                                        .get(xlCol).value);
                        actual = textVal;
                    }
                    break;
                case "decimal":
                    
                    if ((textVal != null)
                            && !(textVal.trim().equals("")))
                        screenVal = parseDecimal(textVal);
                    if (screenVal != parseDecimal((String) xlRow
                            .get(xlCol).value)) {
                        rowMatchSuccess = false;
                        failRowCnt = appRow;
                        failColCnt = xlCol;
                        expected = (String) xlRow
                                .get(xlCol).value;
                        actual = textVal;
                    }
                    break;
                case "string":
                    if (!textVal.equals((String) xlRow
                            .get(xlCol).value)) {
                        rowMatchSuccess = false;
                        failRowCnt = appRow;
                        failColCnt = xlCol;
                        expected = (String) xlRow
                                .get(xlCol).value;
                        actual = textVal;

                    }
                    break;
                }
                if (!rowMatchSuccess) {
                    Assert.fail("Tab Name:" + sheetname
                            + " Row number:" + failRowCnt
                            + " Column number:" + failColCnt
                            + " Expected result:" + expected
                            + " Actual result:" + actual);
                }
            
            }
            
                break;
            
        }
        if (!rowMatchSuccess) {
            Assert.fail("In Tab Name:" + sheetname
                    + " values not found");
        }
    
    } catch (Exception e) {
        Assert.fail(" Unable to check \n");
    }
    
    }
	
	
	private List<XLCellElement> getColumnDetails(int xlColumnPointer,
			int xlRowCount, List<WebElement> applicationCol, XSSFSheet sheet,
			String sheetname) throws ParseException {

		List<XLCellElement> elements = new ArrayList<>();
		String strCellValue = "";

		for (; xlColumnPointer < applicationCol.size(); xlColumnPointer++) {
			Date date = null;
			if ((sheet.getRow(xlRowCount) == null)
					|| (sheet.getRow(xlRowCount).getCell(xlColumnPointer) == null)) {
				elements.add(new XLCellElement(null, "null"));
				continue;
			}
			switch (sheet.getRow(xlRowCount).getCell(xlColumnPointer)
					.getCellType()) {
			case Cell.CELL_TYPE_BLANK:
				elements.add(new XLCellElement(null, "null"));
				break;
			case Cell.CELL_TYPE_FORMULA:
			case Cell.CELL_TYPE_NUMERIC:
				if (HSSFDateUtil.isCellDateFormatted(sheet.getRow(xlRowCount)
						.getCell(xlColumnPointer))) {
					date = sheet.getRow(xlRowCount).getCell(xlColumnPointer)
							.getDateCellValue();
					elements.add(new XLCellElement(date, "date"));
				} else {
					double value = (double) sheet.getRow(xlRowCount)
							.getCell(xlColumnPointer).getNumericCellValue();
					strCellValue = String.valueOf(value);
					elements.add(new XLCellElement(strCellValue, "decimal"));

				}

				break;
			case Cell.CELL_TYPE_STRING:
				strCellValue = sheet.getRow(xlRowCount)
						.getCell(xlColumnPointer).getStringCellValue();
				if (strCellValue.contains("₹")) {
					strCellValue = strCellValue.substring(
							strCellValue.indexOf(" ") + 1,
							strCellValue.length());
					elements.add(new XLCellElement(strCellValue, "string"));
				} else {
					elements.add(new XLCellElement(strCellValue, "string"));
				}
				break;
			}
		}
		return elements;

	}

	private class XLCellElement {
		public Object value;
		public String type;

		public XLCellElement(Object value, String type) {
			this.value = value;
			this.type = type;
		}
	}

	/**
	 * Methods verifies & validates each cell values from the target excel sheet
	 * with web pages.
	 * 
	 * @param colIndex
	 * @param rowCount1
	 * @param applicationCol
	 * @param sheet
	 * @param sheetname
	 * @throws ParseException
	 */
	private void verifyColumnDetails(int xlColumnPointer, int xlRowCount,
			List<WebElement> applicationCol, XSSFSheet sheet, String sheetname)
			throws ParseException {

		String strCellValue = "";

		for (; xlColumnPointer < applicationCol.size(); xlColumnPointer++) {
			double screenVal = 0.0;
			String textVal = applicationCol.get(xlColumnPointer).getText();
			DateFormat dateFormat = new SimpleDateFormat("dd MMMM yyyy");
			Date date = null;
			if ((sheet.getRow(xlRowCount) == null)
					|| (sheet.getRow(xlRowCount).getCell(xlColumnPointer) == null)) {
				continue;
			}
			switch (sheet.getRow(xlRowCount).getCell(xlColumnPointer)
					.getCellType()) {
			case Cell.CELL_TYPE_BLANK:

				break;
			case Cell.CELL_TYPE_FORMULA:
			case Cell.CELL_TYPE_NUMERIC:
				if (HSSFDateUtil.isCellDateFormatted(sheet.getRow(xlRowCount)
						.getCell(xlColumnPointer))) {
					date = sheet.getRow(xlRowCount).getCell(xlColumnPointer)
							.getDateCellValue();
					try {
						Assert.assertEquals(textVal, dateFormat.format(date));
					} catch (Throwable e) {
						Assert.fail("Tab Name:" + sheetname + " Row number:"
								+ xlRowCount + " Column number:"
								+ xlColumnPointer + " Expected result:"
								+ dateFormat.format(date) + " Actual result:"
								+ textVal);
					}
				} else {
					if ((textVal != null) && !(textVal.trim().equals("")))
						screenVal = parseDecimal(applicationCol.get(
								xlColumnPointer).getText());
					double value = (double) sheet.getRow(xlRowCount)
							.getCell(xlColumnPointer).getNumericCellValue();
					strCellValue = String.valueOf(value);
					try {
						Assert.assertEquals(screenVal,
								parseDecimal(strCellValue), 0.0);
					} catch (Throwable e) {
						Assert.fail("Tab Name:" + sheetname + " Row number:"
								+ xlRowCount + " Column number:"
								+ xlColumnPointer + " Expected result:"
								+ parseDecimal(strCellValue)
								+ " Actual result:" + screenVal);
					}
				}

				break;
			case Cell.CELL_TYPE_STRING:
				strCellValue = sheet.getRow(xlRowCount)
						.getCell(xlColumnPointer).getStringCellValue();
				try {
					if (textVal.contains("$") && strCellValue.contains("$")) {
						textVal = textVal.substring(textVal.indexOf(" ") + 1,
								textVal.length());
						strCellValue = strCellValue.substring(
								strCellValue.indexOf(" ") + 1,
								strCellValue.length());
						Assert.assertEquals(textVal, strCellValue);
					}
					else if (textVal.contains("*") && strCellValue.contains("*")) {
						textVal = textVal.substring(0,textVal.indexOf("*"));
						strCellValue = strCellValue.substring(0,strCellValue.indexOf("*"));
						Assert.assertEquals(textVal, strCellValue);
						
					} 
					else {
						Assert.assertEquals(textVal, strCellValue);;
						}
				} catch (Throwable e) {
					Assert.fail("Tab Name:" + sheetname + " Row number:"
							+ xlRowCount + " Column number:" + xlColumnPointer
							+ " Expected result:" + strCellValue
							+ " Actual result:" + textVal);
                  }

				break;
			}
		}

	}

	public void clickBackToClient() throws Throwable {
		clickButton(getResource("frontend.clientform.backtoclientname"),
				"xpath");
	}

	/**
	 * Method makes repayment and verifies & Validates Loan tabs details
	 * 
	 * @param excelSheetPath
	 * @param excelSheet
	 * @throws Throwable
	 */
	public void makeAndVerifyRepayment(String excelSheetPath, String excelName,
			String sheetName) throws Throwable {
		// TODO Auto-generated method stub

		if (sheetName.contains("Input")) {
			makeRepayment(excelSheetPath, excelName, sheetName);
		} else {
			if (sheetName.equals("Transactions")) {
				if (!ishideAccuralsChecked) {
					isaccuralsTypeTransaction = false;
				}
			}
			verifyLoanTabData(excelSheetPath, excelName, sheetName);
		}
	}

	private void makeRepayment(String excelSheetPath, String excelName,
			String inputSheet) throws Throwable {
		// TODO Auto-generated method stub

		Map<String, String> repaymentDetails = parseExcelSheet1(excelSheetPath,
				excelName, inputSheet);
		insertValues(repaymentDetails);
		clickButton(getResource("submitmakerepayment"));
		Thread.sleep(getResourceKey("extraLargeWait"));

	}

	public void verifyAndReadTransactionId(String excelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {
		// TODO Auto-generated method stub
		isaccuralsTypeTransaction = false;
		verifyLoanTabData(excelSheetPath, excelSheetName, sheetName);
	}

	public void makeRepaymentAndReadTransactionId(String excelSheetPath,
			String excelName, String sheetName) throws Throwable {
		if (sheetName.equals("Input")) {
			makeRepayment(excelSheetPath, excelName, sheetName);
		} else {
			isaccuralsTypeTransaction = false;
			verifyLoanTabData(excelSheetPath, excelName, sheetName);
		}
	}

	/**
	 * Method Searches Journal Entries by entering transaction id and verify the
	 * account details.
	 * 
	 * @param excelSheetPath
	 * @param transaction
	 * @throws InterruptedException
	 * @throws IOException
	 * @throws ParseException
	 */
	public void searchWithTransactinID(String clientExcelSheetPath,
			String excelSheetName, String sheetName)
			throws InterruptedException, IOException, ParseException, Exception {

		if ( !(sheetName.contains("Acc_Periodic"))) {

			if (!sheetName.contains("Upfront") && istransactionIdIndexAssigned) {
				transactionIDIndex = setAccuralTransactionID.size() - 1;
				istransactionIdIndexAssigned = false;
			}
			else if(sheetName.contains("Upfront") && !istransactionIdIndexAssigned){
				transactionIDIndex=setAccuralTransactionType.size()-1;
				istransactionIdIndexAssigned = true;
			}
			if (transactionIDIndex >= 0) {
				
				if (sheetName.equals("Acc_Upfront1")|| sheetName.equals("Acc_Upfront") ) {
					setAccuralTransactionID = setAccuralTransactionType;
				}
				isTransactionTabSelected = true;
				getWebDriver()
						.findElement(
								By.xpath("//input[@placeholder='Search by transaction']"))
						.sendKeys(
								Keys.chord(Keys.CONTROL, "a"),
								"L"
										+ setAccuralTransactionID.toArray()[transactionIDIndex--]);
				Thread.sleep(getResourceKey("smallWait"));
				clickButton(
						getResource("frontend.accounting.searchjournal.transactionid.submit"),
						"xpath");
				Thread.sleep(getResourceKey("mediumWait"));
				verifyLoanTabData(clientExcelSheetPath, excelSheetName,
						sheetName);
				clickButton(
						getResource("frontend.accounting.searchjournal.transactionid.Parameters"),
						"xpath");
				Thread.sleep(getResourceKey("mediumWait"));
			}
		}

		else{

			for (int i = setAccuralTransactionType.size()-1; i>=0; i-- ) {
				
				getWebDriver()
						.findElement(
								By.xpath("//input[@placeholder='Search by transaction']"))
						.sendKeys(Keys.chord(Keys.CONTROL, "a"),
								"L" + setAccuralTransactionType.toArray()[i]);
				System.out.println("Accruals " + setAccuralTransactionType.toArray()[i] );
				Thread.sleep(getResourceKey("mediumWait"));
				clickButton(
						getResource("frontend.accounting.searchjournal.transactionid.submit"),
						"xpath");
				Thread.sleep(getResourceKey("smallWait"));
				verifyLoanTabData(clientExcelSheetPath, excelSheetName,
						sheetName);
				clickButton(
						getResource("frontend.accounting.searchjournal.transactionid.Parameters"),
						"xpath");
				Thread.sleep(getResourceKey("mediumWait"));
			}
		}

	}

	/**
	 * Method navigates to Scheduler Jobs and select job and runs it.
	 * 
	 * @param schedularJobName
	 * @throws InterruptedException
	 */
	public void selectSchedularJob(String schedularJobName)
			throws InterruptedException {

		MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl() + "jobs");
		Thread.sleep(getResourceKey("mediumWait"));

		switch (schedularJobName) {

		case "Periodic Accrual Transactions":
			LazyWebElement checkPeriodic = getElement(getResource("addperiodicaccrualtransactions"));
			if (!checkPeriodic.isSelected()) {
				RunPeriodicAccural();
				clickButton(getResource("addperiodicaccrualtransactions"));
				Thread.sleep(getResourceKey("smallWait"));
			}
			ishideAccuralsChecked = false;

			break;
		case "Apply penalty to overdue loans":
			LazyWebElement checkpenalty = getElement(getResource("addpenaltytooverdueloans"));
			if (!checkpenalty.isSelected()) {
				clickButton(getResource("addpenaltytooverdueloans"));
				Thread.sleep(getResourceKey("mediumWait"));
			}
			break;
		case "Periodic & penalty to overdue loans":

			LazyWebElement checkpenalty1 = getElement(getResource("addpenaltytooverdueloans"));
			if (!checkpenalty1.isSelected()) {
				clickButton(getResource("addpenaltytooverdueloans"));
				Thread.sleep(getResourceKey("mediumWait"));
			}
			((JavascriptExecutor) getWebDriver())
					.executeScript("scroll(0,500);");
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("runSelectedJobs"));
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("refresh"));
			Thread.sleep(getResourceKey("largeWait"));
			ishideAccuralsChecked = false;

			LazyWebElement checkPeriodic1 = getElement(getResource("addperiodicaccrualtransactions"));
			if (!checkPeriodic1.isSelected()) {
				clickButton(getResource("addperiodicaccrualtransactions"));
				Thread.sleep(getResourceKey("mediumWait"));
			}
			break;
		case "Add Upfront Accrual Transactions":
			LazyWebElement addupfrontaccrual = getElement(getResource("addupfrontaccrualtransactions"));
			if (!addupfrontaccrual.isSelected()) {
				clickButton(getResource("addupfrontaccrualtransactions"));
				Thread.sleep(getResourceKey("mediumWait"));
			}
			ishideAccuralsChecked = false;
			break;

		case "Upfront & penalty to overdue loans":
			LazyWebElement addupfrontaccrual1 = getElement(getResource("addupfrontaccrualtransactions"));
			if (!addupfrontaccrual1.isSelected()) {
				clickButton(getResource("addupfrontaccrualtransactions"));
				Thread.sleep(getResourceKey("mediumWait"));
			}
			((JavascriptExecutor) getWebDriver())
					.executeScript("scroll(0,500);");
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("runSelectedJobs"));
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("refresh"));
			Thread.sleep(getResourceKey("largeWait"));
			ishideAccuralsChecked = false;
			LazyWebElement checkpenalty2 = getElement(getResource("addpenaltytooverdueloans"));
			if (!checkpenalty2.isSelected()) {
				clickButton(getResource("addpenaltytooverdueloans"));
				Thread.sleep(getResourceKey("mediumWait"));
			}
			break;
		default:
			System.out.println("Invalid schedular Job");
			break;

		}
		((JavascriptExecutor) getWebDriver()).executeScript("scroll(0,500);");
		Thread.sleep(getResourceKey("smallWait"));
		clickButton(getResource("runSelectedJobs"));
		Thread.sleep(getResourceKey("smallWait"));
		clickButton(getResource("refresh"));
		Thread.sleep(getResourceKey("smallWait"));


		if(!currentUrl.equals(""))
		{
		MifosWebPage.navigateToUrl(currentUrl);
		Thread.sleep(getResourceKey("largeWait"));
		}
	}

	public void RunPeriodicAccural() throws InterruptedException
	{
		
		if (!(getElement(getResource("UpdateLoanArrearsAgeing"))).isSelected()) {
			clickButton(getResource("UpdateLoanArrearsAgeing"));
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("runSelectedJobs"));
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("refresh"));
			Thread.sleep(getResourceKey("smallWait"));
		}
		
		 if (!(getElement(getResource("UpdateNonPerformingAssets"))).isSelected()) {
			clickButton(getResource("UpdateNonPerformingAssets"));
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("runSelectedJobs"));
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("refresh"));
			Thread.sleep(getResourceKey("smallWait"));
		}
	}
	private int[] verifyAccrualData(String clientExcelSheetPath,
			String excelSheetName, String sheetname)
			throws InterruptedException, IOException, ParseException {

		// for (String excelname : excelSheetName) {
		// int[] result = null;
		int[] result = new int[10];
		int currentRow = 1;
		int rowToiterate = 0;
		int accuralsRow = 0;
		int excelRowCount = 1;
		int xPathRow = 1;
		String textVal1 = null;
		Date excelDate = null;
		boolean rowWithDateFound = true;

		try {
			FileInputStream file = new FileInputStream(new File(
					clientExcelSheetPath + "\\" + excelSheetName));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			XSSFSheet sheet = workbook.getSheet(sheetname);

			excelRowCount = sheet.getLastRowNum() - sheet.getFirstRowNum();

			DateFormat dateFormat = new SimpleDateFormat("dd MMMM yyyy");
			List<WebElement> applicationCol = null;

			applicationCol = getWebDriver()
					.findElements(
							By.xpath(".//*[@id='main']/div[2]/div/div/div/div/div/div[4]/table/tbody/tr[1]/td"));									  

			for (int row = 1; row <= excelRowCount; row++) {

				if ((sheet.getRow(row) == null)
						|| (sheet.getRow(row).getCell(2) == null)) {
					continue;
				}
				switch (sheet.getRow(row).getCell(2).getCellType()) {
				case Cell.CELL_TYPE_BLANK:
					break;
				case Cell.CELL_TYPE_NUMERIC:

					if (HSSFDateUtil.isCellDateFormatted(sheet.getRow(row)
							.getCell(2))) {
						excelDate = sheet.getRow(row).getCell(2)
								.getDateCellValue();
					}
					break;
				}
				textVal1 = applicationCol.get(2).getText();
				Date appDate = dateFormat.parse(textVal1);

				if ((textVal1.equals(dateFormat.format(excelDate)))) {
					if (rowWithDateFound) {
						currentRow = row;
						rowWithDateFound = false;
					}
					rowToiterate = excelRowCount;

				} else if (!appDate.after(excelDate)) {
					rowToiterate = row - 2;

					break;
				}

			}
			
			if(!rowWithDateFound)
			{
			result[0] = currentRow;
			result[1] = rowToiterate;
			}
			else
			{
				Assert.fail("In Tab Name:" + sheetname
						+ " Row having values "+(String) applicationCol.get(2).getText()+
						" not found");

			}
		} catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		}
		return result;

		// break;
		// }

	}

	/**
	 * Method adds delete and modify tranche from tranche tabs and verifies tabs
	 * 
	 * @param clientExcelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Throwable
	 */
	public void loanTabDetails(String clientExcelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {
		// TODO Auto-generated method stub

		if (sheetName.equals("Loan Tranche Details")) {

			getWebDriver().findElement(
					By.xpath("//a[contains(.,'" + sheetName + "')]")).click();
			Map<String, String> tabDetails = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(tabDetails);
			Thread.sleep(getResourceKey("largeWait"));
		} else if (sheetName.contains("Charges")) {
			getWebDriver()
					.findElement(
							By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[3]/div[4]/div/ul/li[13]/a"))
					.click();
			Thread.sleep(getResourceKey("smallWait"));
			Map<String, String> tabDetails = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(tabDetails);
			Thread.sleep(getResourceKey("largeWait"));
		} else if (sheetName.contains("Modify Transaction")) {
			Map<String, String> tabDetails = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(tabDetails);
			Thread.sleep(getResourceKey("largeWait"));
		} else if (sheetName.equals("Prepay Loan")) {
			Map<String, String> tabDetails = parseExcelSheet1(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(tabDetails);
			Thread.sleep(getResourceKey("largeWait"));
		} else {
			if (sheetName.equals("Transactions")) {
				if (!ishideAccuralsChecked) {
					isaccuralsTypeTransaction = false;
				}
			}
			verifyLoanTabData(clientExcelSheetPath, excelSheetName, sheetName);
		}

	}

	/**
	 * Method verifyAndValidate Error msg successfully from target excel sheet
	 * 
	 * @param excelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Exception
	 */
	public void verifyAndValidate(String excelSheetPath, String excelSheetName,
			String sheetName) throws Exception {
		// TODO Auto-generated method stub
		Map<String, String> verifyMap = parseExcelSheet(excelSheetPath,
				excelSheetName, sheetName);
		for (Map.Entry<String, String> entry : verifyMap.entrySet()) {
			verifySuccessMessage(entry.getKey(), entry.getValue());

		}
	}

	public void defineFloatingRates(String excelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {
		// TODO Auto-generated method stub
		try {
			Map<String, String> FloatingRatesMap = parseExcelSheet(
					excelSheetPath, excelSheetName, sheetName);
			MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl() + "floatingrates");
			Thread.sleep(getResourceKey("mediumWait"));
			insertValues(FloatingRatesMap);
			Thread.sleep(getResourceKey("mediumWait"));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void editRepaymentSchedulePageVarInstalment(String excelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {
		Map<String, String> newLoanDetailsMap = parseExcelSheet1(
				excelSheetPath, excelSheetName, sheetName);
		insertValues(newLoanDetailsMap);
		Thread.sleep(getResourceKey("largeWait"));
	}

	public void searchUser(String user) throws InterruptedException {
		getWebDriver().findElement(By.id("search")).sendKeys(user);
		getWebDriver().findElement(By.id("search")).sendKeys(Keys.ENTER);
		Thread.sleep(getResourceKey("extraLargeWait"));
		getWebDriver().findElement(By.xpath(".//div[1]/div/span[2]/a")).click();
		Thread.sleep(getResourceKey("largeWait"));

	}

	public void undoLastDisbursement(String excelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {
		// TODO Auto-generated method stub

		Map<String, String> newLoanDetailsMap = parseExcelSheet1(
				excelSheetPath, excelSheetName, sheetName);
		insertValues(newLoanDetailsMap);
		Thread.sleep(getResourceKey("largeWait"));

	}
	
	

	public void navigateToCurrentCenterPage(String sheetName) {
		
		switch (sheetName) {
		
		case "center":
		
		     value = currentCenterUrl.split("#/")[1];
		     break;
		case "loan":
		
			value = currentNewLoanUrl.split("#/")[1];
			break;
		}
		MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()
				+ value);
		MifosWebPage.getResource("largeWait");
		
	}
	
public void verifyElementNotVisible(String arg1,String element) {
		
		By locator = null;
		locator = getLocator(getResource(element));
		List<WebElement> element1;
		
switch (arg1) {
		
		case "not visible":
		
		if(getWebDriver().findElement(locator).isDisplayed())
		{
			Assert.fail("UnExpected element is present : "+element);
		}
		break;
		
		case "visible":
		
			 element1 = getWebDriver().findElements(locator);
			System.out.println(element1.size());
			if(!(element1.size()>0)){
				Assert.fail("Expected element is not present : "+element);
			}
			break;
			
		case "Not Displayed":
		    element1 = getWebDriver().findElements(locator);
			System.out.println(element1.size());
			if(element1.size()>0){
				Assert.fail("UnExpected element is present : "+element);
			}
			break;
}

}
}
