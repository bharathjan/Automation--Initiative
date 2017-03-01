INSERT INTO `acc_gl_account` (`id`, `name`, `parent_id`, `hierarchy`, `gl_code`, `disabled`, `manual_journal_entries_allowed`, `account_usage`, `classification_enum`, `tag_id`, `description`, `gl_classification_type`) VALUES
	(1, 'Cash In Hand', NULL, '.', '1', 0, 1, 1, 1, NULL, NULL, NULL),
	(2, 'JLG Loans', NULL, '.', '2', 0, 1, 1, 1, NULL, NULL, NULL),
	(3, 'Interest Recievable on JLG', NULL, '.', '3', 0, 1, 1, 1, NULL, NULL, NULL),
	(4, 'Loan Fees RECEIVABLE', NULL, '.', '4', 0, 1, 1, 1, NULL, NULL, NULL),
	(5, 'Loan Penalty RECEIVABLE', NULL, '.', '5', 0, 1, 1, 1, NULL, NULL, NULL),
	(6, 'Suspense Account', NULL, '.', '6', 0, 1, 1, 1, NULL, NULL, NULL),
	(7, 'Interest Received from JLG', NULL, '.', '7', 0, 1, 1, 4, NULL, NULL, NULL),
	(8, 'LPF on JLG', NULL, '.', '8', 0, 1, 1, 4, NULL, NULL, NULL),
	(10, 'Income from penalties', NULL, '.', '9', 0, 1, 1, 4, NULL, NULL, NULL),
	(11, 'Income from Recovery Payments', NULL, '.', '10', 0, 1, 1, 4, NULL, NULL, NULL),
	(12, 'Bad Debts Written Off', NULL, '.', '11', 0, 1, 1, 5, NULL, NULL, NULL),
	(13, 'Over Payment Liability', NULL, '.', '12', 0, 1, 1, 2, NULL, NULL, NULL),
	(14, 'Income From Fees', NULL, '.', '51', 0, 1, 1, 4, NULL, NULL, NULL),
	(15, '2 Income', NULL, '.', '52', 0, 1, 1, 4, NULL, NULL, NULL),
	(16, '3 income', NULL, '.', '53', 0, 1, 1, 4, NULL, NULL, NULL),
	(17, '1 penalty', NULL, '.', '54', 0, 1, 1, 4, NULL, NULL, NULL),
	(18, '2 Penalty', NULL, '.', '55', 0, 1, 1, 4, NULL, NULL, NULL),
	(19, '3 Penalty', NULL, '.', '56', 0, 1, 1, 4, NULL, NULL, NULL),
	(20, 'Savings Reference', NULL, '.', '201', 0, 1, 1, 1, NULL, NULL, NULL),
	(21, 'Overdraft Portfolio', NULL, '.', '202', 0, 1, 1, 1, NULL, NULL, NULL),
	(22, 'Saving Control', NULL, '.', '203', 0, 1, 1, 2, NULL, NULL, NULL),
	(23, 'Savings Transfer in Suspence', NULL, '.', '204', 0, 1, 1, 2, NULL, NULL, NULL),
	(24, 'Interest On Savings', NULL, '.', '205', 0, 1, 1, 5, NULL, NULL, NULL),
	(25, 'Savings Writeoff', NULL, '.', '206', 0, 1, 1, 5, NULL, NULL, NULL),
	(26, 'Savings Income from fees', NULL, '.', '207', 0, 1, 1, 4, NULL, NULL, NULL),
	(27, 'Other Income', NULL, '.', '208', 0, 1, 1, 4, NULL, NULL, NULL),
	(28, 'Overdraft Interest Income', NULL, '.', '209', 0, 1, 1, 4, NULL, NULL, NULL);
	
	
INSERT IGNORE INTO `f_taluka` (`district_id`, `iso_taluka_code`, `taluka_name`) VALUES
((SELECT ds.id from f_district ds where ds.district_name = 'Bagalkot'), 'BK', 'Bagalkot'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bagalkot'), 'JK', 'Jamkhandi'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bagalkot'), 'ML', 'Mudhol'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bagalkot'), 'BL', 'Bilagi'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bagalkot'), 'HN', 'Hungund'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bagalkot'), 'IL', 'Ilkal'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bagalkot'), 'RB', 'Rabkavi Banhatti'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bagalkot'), 'GD', 'Guledgudda'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bangalore Rural'), 'DB', 'Doddaballapura'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bangalore Rural'), 'DH', 'Devanhalli'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bangalore Rural'), 'HS', 'Hoskote'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bangalore Rural'), 'NL', 'Nelmangala'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bangalore Urban'), 'AL', 'Anekal'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bangalore Urban'), 'BS', 'Bengaluru South'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bangalore Urban'), 'BN', 'Bengaluru North'),
((SELECT ds.id from f_district ds where ds.district_name = 'Bangalore Urban'), 'BE', 'Bengaluru East'),
((SELECT ds.id from f_district ds where ds.district_name = 'Belgaum'), 'AT', 'Athani'),
((SELECT ds.id from f_district ds where ds.district_name = 'Belgaum'), 'BI', 'Bailahongal'),
((SELECT ds.id from f_district ds where ds.district_name = 'Belgaum'), 'BG', 'Belgaum'),
((SELECT ds.id from f_district ds where ds.district_name = 'Belgaum'), 'CK', 'Chikodi'),
((SELECT ds.id from f_district ds where ds.district_name = 'Belgaum'), 'GK', 'Gokak'),
((SELECT ds.id from f_district ds where ds.district_name = 'Belgaum'), 'HK', 'Hukkeri'),
((SELECT ds.id from f_district ds where ds.district_name = 'Belgaum'), 'KN', 'Khanapur'),
((SELECT ds.id from f_district ds where ds.district_name = 'Belgaum'), 'RM', 'Ramdurg');

INSERT INTO `f_loan_purpose` (`id`, `name`, `short_name`, `description`, `is_active`, `createdby_id`, `created_date`, `lastmodifiedby_id`, `lastmodified_date`) VALUES (1, 'Business', '1', NULL, 1, 1, '2016-12-19 15:14:28', 1, '2016-12-19 15:14:28');
INSERT INTO `m_fund` (`id`, `name`, `external_id`) VALUES (1, '1', NULL);
INSERT INTO `m_staff` (`id`, `is_loan_officer`, `office_id`, `firstname`, `lastname`, `display_name`, `mobile_no`, `external_id`, `organisational_role_enum`, `organisational_role_parent_staff_id`, `is_active`, `joining_date`, `image_id`) VALUES (1, 1, 1, 'Chaitanya', 'Officer-1', 'Officer-1, Chaitanya', NULL, 'CO-1', NULL, NULL, 1, NULL, NULL);
INSERT INTO `m_charge` (`id`, `name`, `currency_code`, `charge_applies_to_enum`, `charge_time_enum`, `charge_calculation_enum`, `charge_payment_mode_enum`, `amount`, `fee_on_day`, `fee_interval`, `fee_on_month`, `is_penalty`, `is_active`, `is_deleted`, `min_cap`, `max_cap`, `fee_frequency`, `income_or_liability_account_id`, `tax_group_id`, `emi_rounding_goalseek`, `is_glim_charge`, `glim_charge_calculation_enum`, `is_capitalized`) VALUES (1, 'Bajaj - Double Insurance (1.8%) - 1 Year', 'INR', 1, 12, 5, 0, 1.800000, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `m_charge` (`id`, `name`, `currency_code`, `charge_applies_to_enum`, `charge_time_enum`, `charge_calculation_enum`, `charge_payment_mode_enum`, `amount`, `fee_on_day`, `fee_interval`, `fee_on_month`, `is_penalty`, `is_active`, `is_deleted`, `min_cap`, `max_cap`, `fee_frequency`, `income_or_liability_account_id`, `tax_group_id`, `emi_rounding_goalseek`, `is_glim_charge`, `glim_charge_calculation_enum`, `is_capitalized`) VALUES (2, 'Bajaj - Double Insurance (1.2%) - 1 Year', 'INR', 1, 12, 5, 0, 1.200000, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `m_charge` (`id`, `name`, `currency_code`, `charge_applies_to_enum`, `charge_time_enum`, `charge_calculation_enum`, `charge_payment_mode_enum`, `amount`, `fee_on_day`, `fee_interval`, `fee_on_month`, `is_penalty`, `is_active`, `is_deleted`, `min_cap`, `max_cap`, `fee_frequency`, `income_or_liability_account_id`, `tax_group_id`, `emi_rounding_goalseek`, `is_glim_charge`, `glim_charge_calculation_enum`, `is_capitalized`) VALUES (3, 'Kotak - Single Insurance (0.5049%) - 1 Year', 'INR', 1, 12, 5, 0, 0.505000, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `m_charge` (`id`, `name`, `currency_code`, `charge_applies_to_enum`, `charge_time_enum`, `charge_calculation_enum`, `charge_payment_mode_enum`, `amount`, `fee_on_day`, `fee_interval`, `fee_on_month`, `is_penalty`, `is_active`, `is_deleted`, `min_cap`, `max_cap`, `fee_frequency`, `income_or_liability_account_id`, `tax_group_id`, `emi_rounding_goalseek`, `is_glim_charge`, `glim_charge_calculation_enum`, `is_capitalized`) VALUES (4, 'Kotak - Double Insurance (0.9592%) - 1Year', 'INR', 1, 12, 5, 0, 0.959000, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `m_charge` (`id`, `name`, `currency_code`, `charge_applies_to_enum`, `charge_time_enum`, `charge_calculation_enum`, `charge_payment_mode_enum`, `amount`, `fee_on_day`, `fee_interval`, `fee_on_month`, `is_penalty`, `is_active`, `is_deleted`, `min_cap`, `max_cap`, `fee_frequency`, `income_or_liability_account_id`, `tax_group_id`, `emi_rounding_goalseek`, `is_glim_charge`, `glim_charge_calculation_enum`, `is_capitalized`) VALUES (5, 'LPF with Service Tax (1.15%)', 'INR', 1, 12, 5, 0, 1.150000, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `m_charge` (`id`, `name`, `currency_code`, `charge_applies_to_enum`, `charge_time_enum`, `charge_calculation_enum`, `charge_payment_mode_enum`, `amount`, `fee_on_day`, `fee_interval`, `fee_on_month`, `is_penalty`, `is_active`, `is_deleted`, `min_cap`, `max_cap`, `fee_frequency`, `income_or_liability_account_id`, `tax_group_id`, `emi_rounding_goalseek`, `is_glim_charge`, `glim_charge_calculation_enum`, `is_capitalized`) VALUES (6, 'Tranche disbursment Charge', 'INR', 1, 12, 5, 0, 1.000000, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0);
INSERT INTO `m_organisation_currency` (`id`, `code`, `decimal_places`, `currency_multiplesof`, `name`, `display_symbol`, `internationalized_name_code`) VALUES
	(22, 'INR', 2, NULL, 'Indian Rupee', '₹', 'currency.INR');

INSERT INTO `m_product_loan` (`id`, `short_name`, `currency_code`, `currency_digits`, `currency_multiplesof`, `principal_amount`, `min_principal_amount`, `max_principal_amount`, `arrearstolerance_amount`, `name`, `description`, `fund_id`, `is_linked_to_floating_interest_rates`, `allow_variabe_installments`, `nominal_interest_rate_per_period`, `min_nominal_interest_rate_per_period`, `max_nominal_interest_rate_per_period`, `interest_period_frequency_enum`, `annual_nominal_interest_rate`, `interest_method_enum`, `interest_calculated_in_period_enum`, `allow_partial_period_interest_calcualtion`, `repay_every`, `repayment_period_frequency_enum`, `number_of_repayments`, `min_number_of_repayments`, `max_number_of_repayments`, `grace_on_principal_periods`, `recurring_moratorium_principal_periods`, `grace_on_interest_periods`, `grace_interest_free_periods`, `amortization_method_enum`, `accounting_type`, `loan_transaction_strategy_id`, `external_id`, `include_in_borrower_cycle`, `use_borrower_cycle`, `start_date`, `close_date`, `allow_multiple_disbursals`, `max_disbursals`, `max_outstanding_loan_balance`, `grace_on_arrears_ageing`, `overdue_days_for_npa`, `days_in_month_enum`, `days_in_year_enum`, `interest_recalculation_enabled`, `min_days_between_disbursal_and_first_repayment`, `min_periods_between_disbursal_and_first_repayment`, `min_duration_applicable_for_all_disbursements`, `hold_guarantee_funds`, `principal_threshold_for_last_installment`, `account_moves_out_of_npa_only_on_arrears_completion`, `can_define_fixed_emi_amount`, `instalment_amount_in_multiples_of`, `sync_expected_with_disbursement_date`, `close_loan_on_overpayment`, `can_use_for_topup`, `adjust_first_emi_amount`, `adjusted_instalment_in_multiples_of`, `min_loan_term`, `max_loan_term`, `loan_tenure_frequency_type`, `weeks_in_year_enum`, `adjust_interest_for_rounding`, `emi_based_on_disbursements`, `pmt_calculated_in_period_enum`) VALUES (1, 'TL', 'INR', 2, 0, 10000.000000, NULL, NULL, NULL, 'CH001-TL', 'CH001-TL', NULL, b'0', b'0', 25.000000, NULL, NULL, 3, 25.000000, 0, 0, 0, 2, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 4, NULL, 0, 0, '2010-01-01', NULL, 1, 3, 10000.000000, 10, 180, 1, 1, 1, NULL, 1, 1, 0, 0.00, 1, 1, NULL, 1, 1, 0, 0, NULL, NULL, NULL, 4, 1, 0, 0, NULL);

INSERT INTO `m_product_loan_charge` (`id`, `product_loan_id`, `charge_id`, `is_mandatory`) VALUES (1, 1, 2, 0);
INSERT INTO `m_product_loan_charge` (`id`, `product_loan_id`, `charge_id`, `is_mandatory`) VALUES (2, 1, 1, 0);

INSERT INTO `m_product_loan_configurable_attributes` (`id`, `loan_product_id`, `amortization_method_enum`, `interest_method_enum`, `loan_transaction_strategy_id`, `interest_calculated_in_period_enum`, `arrearstolerance_amount`, `repay_every`, `moratorium`, `grace_on_arrears_ageing`) VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

INSERT INTO `m_product_loan_recalculation_details` (`id`, `product_id`, `compound_type_enum`, `reschedule_strategy_enum`, `rest_frequency_type_enum`, `rest_frequency_interval`, `arrears_based_on_original_schedule`, `pre_close_interest_calculation_strategy`, `compounding_frequency_type_enum`, `compounding_frequency_interval`, `rest_frequency_nth_day_enum`, `rest_frequency_on_day`, `rest_frequency_weekday_enum`, `compounding_frequency_nth_day_enum`, `compounding_frequency_on_day`, `compounding_frequency_weekday_enum`, `is_compounding_to_be_posted_as_transaction`, `allow_compounding_on_eod`, `is_subsidy_applicable`) VALUES (1, 1, 0, 2, 2, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0);

INSERT INTO `acc_product_mapping` (`id`, `gl_account_id`, `product_id`, `product_type`, `payment_type`, `charge_id`, `financial_account_type`, `code_value_cv_id`) VALUES (13, 1, 1, 1, NULL, NULL, 1, NULL);
INSERT INTO `acc_product_mapping` (`id`, `gl_account_id`, `product_id`, `product_type`, `payment_type`, `charge_id`, `financial_account_type`, `code_value_cv_id`) VALUES (14, 21, 1, 1, NULL, NULL, 2, NULL);
INSERT INTO `acc_product_mapping` (`id`, `gl_account_id`, `product_id`, `product_type`, `payment_type`, `charge_id`, `financial_account_type`, `code_value_cv_id`) VALUES (15, 6, 1, 1, NULL, NULL, 10, NULL);
INSERT INTO `acc_product_mapping` (`id`, `gl_account_id`, `product_id`, `product_type`, `payment_type`, `charge_id`, `financial_account_type`, `code_value_cv_id`) VALUES (16, 3, 1, 1, NULL, NULL, 7, NULL);
INSERT INTO `acc_product_mapping` (`id`, `gl_account_id`, `product_id`, `product_type`, `payment_type`, `charge_id`, `financial_account_type`, `code_value_cv_id`) VALUES (17, 4, 1, 1, NULL, NULL, 8, NULL);
INSERT INTO `acc_product_mapping` (`id`, `gl_account_id`, `product_id`, `product_type`, `payment_type`, `charge_id`, `financial_account_type`, `code_value_cv_id`) VALUES (18, 5, 1, 1, NULL, NULL, 9, NULL);
INSERT INTO `acc_product_mapping` (`id`, `gl_account_id`, `product_id`, `product_type`, `payment_type`, `charge_id`, `financial_account_type`, `code_value_cv_id`) VALUES (19, 7, 1, 1, NULL, NULL, 3, NULL);
INSERT INTO `acc_product_mapping` (`id`, `gl_account_id`, `product_id`, `product_type`, `payment_type`, `charge_id`, `financial_account_type`, `code_value_cv_id`) VALUES (20, 14, 1, 1, NULL, NULL, 4, NULL);
INSERT INTO `acc_product_mapping` (`id`, `gl_account_id`, `product_id`, `product_type`, `payment_type`, `charge_id`, `financial_account_type`, `code_value_cv_id`) VALUES (21, 10, 1, 1, NULL, NULL, 5, NULL);
INSERT INTO `acc_product_mapping` (`id`, `gl_account_id`, `product_id`, `product_type`, `payment_type`, `charge_id`, `financial_account_type`, `code_value_cv_id`) VALUES (22, 11, 1, 1, NULL, NULL, 12, NULL);
INSERT INTO `acc_product_mapping` (`id`, `gl_account_id`, `product_id`, `product_type`, `payment_type`, `charge_id`, `financial_account_type`, `code_value_cv_id`) VALUES (23, 12, 1, 1, NULL, NULL, 6, NULL);
INSERT INTO `acc_product_mapping` (`id`, `gl_account_id`, `product_id`, `product_type`, `payment_type`, `charge_id`, `financial_account_type`, `code_value_cv_id`) VALUES (24, 13, 1, 1, NULL, NULL, 11, NULL);

INSERT INTO `m_payment_type` (`id`, `value`, `description`, `is_cash_payment`, `order_position`, `external_service_id`) VALUES (1, 'Cash', 'Cash', 1, 1, NULL);
INSERT INTO `m_payment_type` (`id`, `value`, `description`, `is_cash_payment`, `order_position`, `external_service_id`) VALUES (2, 'Cheque', 'Cheque', 0, 2, NULL);
