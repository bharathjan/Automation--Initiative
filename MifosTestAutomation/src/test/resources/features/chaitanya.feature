 Feature:CHAITANYA

Background:
	Given I navigate to Finflux using "chaitanya#/"
	And I login into Finflux site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully
	
@RunnerClass1
Scenario: CH001-TR1-01NOV2016-TR2-01JAN2017-FirstRepayment21NOV2016-DISB01NOV2016
 
 Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
		|CH001-TL1.xlsx|
 Given I setup the village
 When I entered the values into "village" from "Village" sheet
        |CH001-TR1-01NOV2016-TR2-01JAN2017-FirstRepayment21NOV2016-DISB01NOV2016.xlsx|
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH001-TR1-01NOV2016-TR2-01JAN2017-FirstRepayment21NOV2016-DISB01NOV2016.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH001-TR1-01NOV2016-TR2-01JAN2017-FirstRepayment21NOV2016-DISB01NOV2016.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
        |CH001-TR1-01NOV2016-TR2-01JAN2017-FirstRepayment21NOV2016-DISB01NOV2016.xlsx|
 Then I verified the following Tabs details successfully 
	    |CH001-TR1-01NOV2016-TR2-01JAN2017-FirstRepayment21NOV2016-DISB01NOV2016.xlsx|Summary|Repayment Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH001-TR1-01NOV2016-TR2-01JAN2017-FirstRepayment21NOV2016-DISB01NOV2016.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH001-TR1-01NOV2016-TR2-01JAN2017-FirstRepayment21NOV2016-DISB01NOV2016.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|


@RunnerClass1		
Scenario: CH002-TR1-01NOV2016-TR2-01JAN2017-FirstRepayment21NOV2016-DISB10NOV2016-VerifyErrorMsg
 
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH002-TR1-01NOV2016-TR2-01JAN2017-FirstRepayment21NOV2016-DISB10NOV2016.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH002-TR1-01NOV2016-TR2-01JAN2017-FirstRepayment21NOV2016-DISB10NOV2016.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
        |CH002-TR1-01NOV2016-TR2-01JAN2017-FirstRepayment21NOV2016-DISB10NOV2016.xlsx|
 Then i validate and Verify from "error" sheet 
	    |CH002-TR1-01NOV2016-TR2-01JAN2017-FirstRepayment21NOV2016-DISB10NOV2016.xlsx|


@RunnerClass1
 Scenario: CH003-TR1-01NOV2016-FirstRepayment21NOV2016-APR10NOV2016-VerifyErrorMsg
 
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH003-TR1-01NOV2016-FirstRepayment21NOV2016-APR10NOV2016-VerifyErrorMsg.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH003-TR1-01NOV2016-FirstRepayment21NOV2016-APR10NOV2016-VerifyErrorMsg.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
        |CH003-TR1-01NOV2016-FirstRepayment21NOV2016-APR10NOV2016-VerifyErrorMsg.xlsx|
 Then i validate and Verify from "error" sheet 
	    |CH003-TR1-01NOV2016-FirstRepayment21NOV2016-APR10NOV2016-VerifyErrorMsg.xlsx|
		

@RunnerClass1
Scenario: CH004-TR1-01NOV2016-FirstRepayment21NOV2016-APR01NOV2016-ADDTR2-01JAN2017-VerifyErrorMsg
 
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH004-TR1-01NOV2016-FirstRepayment21NOV2016-APR01NOV2016-ADDTR2-01JAN2017.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH004-TR1-01NOV2016-FirstRepayment21NOV2016-APR01NOV2016-ADDTR2-01JAN2017.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
        |CH004-TR1-01NOV2016-FirstRepayment21NOV2016-APR01NOV2016-ADDTR2-01JAN2017.xlsx|
  Then I "Add Another Tranche" and verified the following tabs
	  	|CH004-TR1-01NOV2016-FirstRepayment21NOV2016-APR01NOV2016-ADDTR2-01JAN2017.xlsx| Modify Transaction|
 Then i validate and Verify from "error" sheet 
	    |CH004-TR1-01NOV2016-FirstRepayment21NOV2016-APR01NOV2016-ADDTR2-01JAN2017.xlsx|


@RunnerClass1
Scenario: CH005-1stTR01NOV2016-add2charges-2ndTRafter-submitting1TRApplication

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH005-1stTR01NOV2016-add2charges-2ndTRafter-submitting1TRApplication.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH005-1stTR01NOV2016-add2charges-2ndTRafter-submitting1TRApplication.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
        |CH005-1stTR01NOV2016-add2charges-2ndTRafter-submitting1TRApplication.xlsx|
 Then I "Add Another Tranche" and verified the following tabs
	  	|CH005-1stTR01NOV2016-add2charges-2ndTRafter-submitting1TRApplication.xlsx| Modify Transaction|
 Then I verified the following Tabs details successfully 
	    |CH005-1stTR01NOV2016-add2charges-2ndTRafter-submitting1TRApplication.xlsx|Summary|Repayment Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH005-1stTR01NOV2016-add2charges-2ndTRafter-submitting1TRApplication.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH005-1stTR01NOV2016-add2charges-2ndTRafter-submitting1TRApplication.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|
		
	

@RunnerClass1
Scenario: CH006-1stTR01NOV2016-add2charges-add2ndTRafter-after1stTRdisbursement

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH006-1stTR01NOV2016-add2charges-add2ndTRafter-after1stTRdisbursement.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH006-1stTR01NOV2016-add2charges-add2ndTRafter-after1stTRdisbursement.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
        |CH006-1stTR01NOV2016-add2charges-add2ndTRafter-after1stTRdisbursement.xlsx|
 Then I "Add and Disburse 2nd Tranche" and verified the following tabs
	  	|CH006-1stTR01NOV2016-add2charges-add2ndTRafter-after1stTRdisbursement.xlsx| Modify Transaction|
 Then I verified the following Tabs details successfully 
	    |CH006-1stTR01NOV2016-add2charges-add2ndTRafter-after1stTRdisbursement.xlsx|Summary|Repayment Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH006-1stTR01NOV2016-add2charges-add2ndTRafter-after1stTRdisbursement.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH006-1stTR01NOV2016-add2charges-add2ndTRafter-after1stTRdisbursement.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Periodic1|Acc_RepaymentDisbursement2|Acc_Disbursement2|

@RunnerClass1
Scenario: CH007-1TR01NOV2016-add2charges-2ndTRafter1stapproval-DISB1stTR-delete2ndTR

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH007-1TR01NOV2016-add2charges-2ndTRafter1stapproval-DISB1stTR-delete2ndTR.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH007-1TR01NOV2016-add2charges-2ndTRafter1stapproval-DISB1stTR-delete2ndTR.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
        |CH007-1TR01NOV2016-add2charges-2ndTRafter1stapproval-DISB1stTR-delete2ndTR.xlsx|
 Then I "Add 2nd Tranche" and verified the following tabs
	  	|CH007-1TR01NOV2016-add2charges-2ndTRafter1stapproval-DISB1stTR-delete2ndTR.xlsx| Modify Transaction|
 Then I "Disburse 1st Tranche" and verified the following tabs
	  	|CH007-1TR01NOV2016-add2charges-2ndTRafter1stapproval-DISB1stTR-delete2ndTR.xlsx| Modify Transaction1|
 Then I "Delete 2nd Tranche" and verified the following tabs
	  	|CH007-1TR01NOV2016-add2charges-2ndTRafter1stapproval-DISB1stTR-delete2ndTR.xlsx| Modify Transaction2|
 And I verified the "Tranche Others" details successfully 
        |CH007-1TR01NOV2016-add2charges-2ndTRafter1stapproval-DISB1stTR-delete2ndTR.xlsx| 

		

@RunnerClass1
Scenario: CH008-CenterBiWeeklyMeetingFRI-SubmitJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2WED

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH008-CenterBiWeeklyMeetingFRI-SubmitJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2WED.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH008-CenterBiWeeklyMeetingFRI-SubmitJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2WED.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
        |CH008-CenterBiWeeklyMeetingFRI-SubmitJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2WED.xlsx|
 Then I Navigate Back to Current "center" Page
 Then I "Edit client Meeting Date" and verified the following tabs
	  	|CH008-CenterBiWeeklyMeetingFRI-SubmitJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2WED.xlsx| Modify Transaction|
  Then i validate and Verify from "Validate" sheet 
	    |CH008-CenterBiWeeklyMeetingFRI-SubmitJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2WED.xlsx|
		

@RunnerClass1
Scenario: CH009-CenterBiWeeklyMeetingFRI-ApproveJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2WED

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH009-CenterBiWeeklyMeetingFRI-ApproveJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2WED.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH009-CenterBiWeeklyMeetingFRI-ApproveJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2WED.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
        |CH009-CenterBiWeeklyMeetingFRI-ApproveJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2WED.xlsx|
 Then I Navigate Back to Current "center" Page
 Then I "Edit client Meeting Date" and verified the following tabs
	  	|CH009-CenterBiWeeklyMeetingFRI-ApproveJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2WED.xlsx| Modify Transaction|
  Then i validate and Verify from "Validate" sheet
	    |CH009-CenterBiWeeklyMeetingFRI-ApproveJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2WED.xlsx| 
		

@RunnerClass1
Scenario: CH010-CenterBiWeeklyMeetingTHU-DisburseJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2FRI

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH010-CenterBiWeeklyMeetingTHU-DisburseJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2FRI.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH010-CenterBiWeeklyMeetingTHU-DisburseJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2FRI.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
        |CH010-CenterBiWeeklyMeetingTHU-DisburseJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2FRI.xlsx|
 Then I Navigate Back to Current "center" Page
 Then I "Edit client Meeting Date" and verified the following tabs
	  	|CH010-CenterBiWeeklyMeetingTHU-DisburseJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2FRI.xlsx| Modify Transaction|
  Then i validate and Verify from "error" sheet 
	    |CH010-CenterBiWeeklyMeetingTHU-DisburseJLGforClientWithBiWeeklyRepay-ModifyCenterMeeting2FRI.xlsx|
	    

@RunnerClass1
Scenario: CH011-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH011-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH011-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH011-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014.xlsx|
  And I verified the "Loan Others Details1" details successfully 
        |CH011-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014.xlsx|
  And I verified the "Loan Others Details2" details successfully 
        |CH011-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014.xlsx|
  And I verified the "Loan Others Details3" details successfully 
        |CH011-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014.xlsx| 
        
@RunnerClass1        
Scenario: CH012-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014-MODYAPPL-Dele1stCharge

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH012-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014-MODYAPPL-Dele1stCharge.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH012-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014-MODYAPPL-Dele1stCharge.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH012-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014-MODYAPPL-Dele1stCharge.xlsx|
  Then I "Modify Apllication" and verified the following tabs
	  	|CH012-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014-MODYAPPL-Dele1stCharge.xlsx| Modify Transaction| 
  And I verified the "Loan Others Details1" details successfully 
        |CH012-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014-MODYAPPL-Dele1stCharge.xlsx|
  And I verified the "Loan Others Details2" details successfully 
        |CH012-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014-MODYAPPL-Dele1stCharge.xlsx|
  And I verified the "Loan Others Details3" details successfully 
        |CH012-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit22AUG2014-MODYAPPL-Dele1stCharge.xlsx|
        
@RunnerClass1         
Scenario: CH013-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit-Approve

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH013-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit-Approve.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH013-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit-Approve.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH013-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit-Approve.xlsx|
  And I verified the "Loan Others Details1" details successfully 
        |CH013-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit-Approve.xlsx|
  And I verified the "Loan Others Details2" details successfully 
        |CH013-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit-Approve.xlsx|
 And I verified the "Approve Others Details1" details successfully 
        |CH013-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit-Approve.xlsx|
  And I verified the "Approve Others Details2" details successfully 
        |CH013-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit-Approve.xlsx|
  And I verified the "Approve Others Details3" details successfully 
        |CH013-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit-Approve.xlsx| 
 And I verified the "Approve Others Details4" details successfully 
        |CH013-Attach2WeeklyMeetingMON-NewJLGloanApplication-Submit-Approve.xlsx| 
        

@RunnerClass1          
Scenario: CH014-Attach2WeeklyMeetingMON-NewJLGloanApplication-SUB-APR-DISB

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH014-Attach2WeeklyMeetingMON-NewJLGloanApplication-SUB-APR-DISB.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH014-Attach2WeeklyMeetingMON-NewJLGloanApplication-SUB-APR-DISB.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH014-Attach2WeeklyMeetingMON-NewJLGloanApplication-SUB-APR-DISB.xlsx|
   Then I verified the following Tabs details successfully 
	    |CH014-Attach2WeeklyMeetingMON-NewJLGloanApplication-SUB-APR-DISB.xlsx|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH014-Attach2WeeklyMeetingMON-NewJLGloanApplication-SUB-APR-DISB.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH014-Attach2WeeklyMeetingMON-NewJLGloanApplication-SUB-APR-DISB.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|


@RunnerClass1  	
Scenario: CH015-1mandatoryCharge-InLoanProduct-NewJLGloanApplication-VerifyChargeWithoutCrossMark

 Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
		|CH015-1mandatoryCharge-InLoanProduct-NewJLGloanApplication-VerifyChargeWithoutCrossMark.xlsx|
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH015-1mandatoryCharge-InLoanProduct-NewJLGloanApplication-VerifyChargeWithoutCrossMark.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH015-1mandatoryCharge-InLoanProduct-NewJLGloanApplication-VerifyChargeWithoutCrossMark.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH015-1mandatoryCharge-InLoanProduct-NewJLGloanApplication-VerifyChargeWithoutCrossMark.xlsx|
 Then I Verify Element "not visible"
        |VerifyDeleteChargeButton|	
        
 @RunnerClass1        
 Scenario: CH016-Attach2WeeklyMeetingMON-NewJLGloanApplication-WhileApproveAddCharge-VerifyChargesApplied

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH016-Attach2WeeklyMeetingMON-NewJLGloanApplication-WhileApproveAddCharge-VerifyChargesApplied.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH016-Attach2WeeklyMeetingMON-NewJLGloanApplication-WhileApproveAddCharge-VerifyChargesApplied.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH016-Attach2WeeklyMeetingMON-NewJLGloanApplication-WhileApproveAddCharge-VerifyChargesApplied.xlsx|
  Then I "Add charge while Approving" and verified the following tabs
	  	|CH016-Attach2WeeklyMeetingMON-NewJLGloanApplication-WhileApproveAddCharge-VerifyChargesApplied.xlsx| Modify Transaction|
  Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH016-Attach2WeeklyMeetingMON-NewJLGloanApplication-WhileApproveAddCharge-VerifyChargesApplied.xlsx| Modify Transaction1|
  Then I verified the following Tabs details successfully 
	    |CH016-Attach2WeeklyMeetingMON-NewJLGloanApplication-WhileApproveAddCharge-VerifyChargesApplied.xlsx|Summary|Repayment Schedule|Future Schedule|Transactions|
	    

@RunnerClass1 
Scenario: CH017-Attach2WeeklyMeetingMON-NewJLGloanApplication-Approve-UndoApprove-Verify
 
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH017-Attach2WeeklyMeetingMON-NewJLGloanApplication-Approve-UndoApprove-Verify.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH017-Attach2WeeklyMeetingMON-NewJLGloanApplication-Approve-UndoApprove-Verify.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH017-Attach2WeeklyMeetingMON-NewJLGloanApplication-Approve-UndoApprove-Verify.xlsx|
  Then I "Undo Approve" and verified the following tabs
	  	|CH017-Attach2WeeklyMeetingMON-NewJLGloanApplication-Approve-UndoApprove-Verify.xlsx| Modify Transaction|
  Then I Verify Element "visible"
        |NewJLGClickonApproveButton|
   And I verified the "Loan Others Details1" details successfully 
        |CH017-Attach2WeeklyMeetingMON-NewJLGloanApplication-Approve-UndoApprove-Verify.xlsx|
  And I verified the "Loan Others Details2" details successfully 
        |CH017-Attach2WeeklyMeetingMON-NewJLGloanApplication-Approve-UndoApprove-Verify.xlsx|
  And I verified the "Loan Others Details3" details successfully 
        |CH017-Attach2WeeklyMeetingMON-NewJLGloanApplication-Approve-UndoApprove-Verify.xlsx| 
        

@RunnerClass1        
Scenario: CH018-Attach2WeeklyMeetingMON-NewJLGloanApplication-AfterSubmit-Reject-Verify
 
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH018-Attach2WeeklyMeetingMON-NewJLGloanApplication-AfterSubmit-Reject-Verify.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH018-Attach2WeeklyMeetingMON-NewJLGloanApplication-AfterSubmit-Reject-Verify.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH018-Attach2WeeklyMeetingMON-NewJLGloanApplication-AfterSubmit-Reject-Verify.xlsx|
  Then I "Reject After Submit" and verified the following tabs
	  	|CH018-Attach2WeeklyMeetingMON-NewJLGloanApplication-AfterSubmit-Reject-Verify.xlsx| Modify Transaction|
  Then I Verify Element "Not Displayed"
        |NewJLGViewforApproveButton|
        
        
@RunnerClass1        
Scenario: CH019-Attach2WeeklyMeetingMON-NewJLGloanApplication-AfterApprove-Reject-Verify
 
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH019-Attach2WeeklyMeetingMON-NewJLGloanApplication-AfterApprove-Reject-Verify.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH019-Attach2WeeklyMeetingMON-NewJLGloanApplication-AfterApprove-Reject-Verify.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH019-Attach2WeeklyMeetingMON-NewJLGloanApplication-AfterApprove-Reject-Verify.xlsx|
  Then I "Reject After approving" and verified the following tabs
	  	|CH019-Attach2WeeklyMeetingMON-NewJLGloanApplication-AfterApprove-Reject-Verify.xlsx| Modify Transaction|
  Then I Verify Element "Not Displayed"
        |NewJLGViewforApproveButton|
        
 @RunnerClass1        
 Scenario: CH020-Attach2WeeklyMeetingMON-NewJLGloanApplication-UndoApprove-AgainApproveAndDISB
 
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH020-Attach2WeeklyMeetingMON-NewJLGloanApplication-UndoApprove-AgainApproveAndDISB.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH020-Attach2WeeklyMeetingMON-NewJLGloanApplication-UndoApprove-AgainApproveAndDISB.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH020-Attach2WeeklyMeetingMON-NewJLGloanApplication-UndoApprove-AgainApproveAndDISB.xlsx|
 Then I "Undo Approve Loan" and verified the following tabs
	  	|CH020-Attach2WeeklyMeetingMON-NewJLGloanApplication-UndoApprove-AgainApproveAndDISB.xlsx| Modify Transaction|
 Then I "Approve and Disburse" and verified the following tabs
	  	|CH020-Attach2WeeklyMeetingMON-NewJLGloanApplication-UndoApprove-AgainApproveAndDISB.xlsx| Modify Transaction1|
 Then I verified the following Tabs details successfully 
	    |CH020-Attach2WeeklyMeetingMON-NewJLGloanApplication-UndoApprove-AgainApproveAndDISB.xlsx|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I Navigate Back to Current "loan" Page
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH020-Attach2WeeklyMeetingMON-NewJLGloanApplication-UndoApprove-AgainApproveAndDISB.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH020-Attach2WeeklyMeetingMON-NewJLGloanApplication-UndoApprove-AgainApproveAndDISB.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|
 
 
@RunnerClass1 
Scenario: CH021-NewJLGloanApplication-WithoutBusinnesPurpose&DISBdate-ValidateErrMsg
 
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH021-NewJLGloanApplication-WithoutBusinnesPurpose&DISBdate-ValidateErrMsg.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH021-NewJLGloanApplication-WithoutBusinnesPurpose&DISBdate-ValidateErrMsg.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH021-NewJLGloanApplication-WithoutBusinnesPurpose&DISBdate-ValidateErrMsg.xlsx|
 Then i validate and Verify from "error" sheet 
	    |CH021-NewJLGloanApplication-WithoutBusinnesPurpose&DISBdate-ValidateErrMsg.xlsx| 
	    
@RunnerClass1	    
Scenario: CH022-NewJLGloanApplication-ApproveWithoutDetails-ValidateErrMsg
 
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH022-NewJLGloanApplication-ApproveWithoutDetails-ValidateErrMsg.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH022-NewJLGloanApplication-ApproveWithoutDetails-ValidateErrMsg.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH022-NewJLGloanApplication-ApproveWithoutDetails-ValidateErrMsg.xlsx|
 Then i validate and Verify from "error" sheet 
	    |CH022-NewJLGloanApplication-ApproveWithoutDetails-ValidateErrMsg.xlsx|
	    
	    
@RunnerClass1	    
Scenario: CH023-Attach2WeeklyMeetingMON-NewJLGApp-ExpectDISBDate22Aug2014-ApprovedDate14Aug2014-verifyErrMsg
 
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH023-Attach2WeeklyMeetingMON-NewJLGApp-ExpectDISBDate22Aug2014-ApprovedDate14Aug2014-verifyErrMsg.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH023-Attach2WeeklyMeetingMON-NewJLGApp-ExpectDISBDate22Aug2014-ApprovedDate14Aug2014-verifyErrMsg.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH023-Attach2WeeklyMeetingMON-NewJLGApp-ExpectDISBDate22Aug2014-ApprovedDate14Aug2014-verifyErrMsg.xlsx|
 Then i validate and Verify from "error" sheet 
	    |CH023-Attach2WeeklyMeetingMON-NewJLGApp-ExpectDISBDate22Aug2014-ApprovedDate14Aug2014-verifyErrMsg.xlsx|
	    
@RunnerClass1	    
Scenario: CH024-Attach2WeeklyMeetingMON-NewJLGApp-ExpectDISBDate22Aug2014-ApprovedDate25Aug2014-verifyErrMsg
 
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH024-Attach2WeeklyMeetingMON-NewJLGApp-ExpectDISBDate22Aug2014-ApprovedDate25Aug2014-verifyErrMsg.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH024-Attach2WeeklyMeetingMON-NewJLGApp-ExpectDISBDate22Aug2014-ApprovedDate25Aug2014-verifyErrMsg.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH024-Attach2WeeklyMeetingMON-NewJLGApp-ExpectDISBDate22Aug2014-ApprovedDate25Aug2014-verifyErrMsg.xlsx|
 Then i validate and Verify from "error" sheet 
	    |CH024-Attach2WeeklyMeetingMON-NewJLGApp-ExpectDISBDate22Aug2014-ApprovedDate25Aug2014-verifyErrMsg.xlsx|
	    

@RunnerClass1	    
Scenario: CH025-Attach2WeeklyMeetingMON-NewJLGApp-SubmittedDate22Aug2014-ExpectDISBDate20Aug2014-verifyErrMsg
 
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH025-Attach2WeeklyMeetingMON-NewJLGApp-SubmittedDate22Aug2014-ExpectDISBDate20Aug2014-verifyErrMsg.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH025-Attach2WeeklyMeetingMON-NewJLGApp-SubmittedDate22Aug2014-ExpectDISBDate20Aug2014-verifyErrMsg.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH025-Attach2WeeklyMeetingMON-NewJLGApp-SubmittedDate22Aug2014-ExpectDISBDate20Aug2014-verifyErrMsg.xlsx|
 Then i validate and Verify from "error" sheet 
	    |CH025-Attach2WeeklyMeetingMON-NewJLGApp-SubmittedDate22Aug2014-ExpectDISBDate20Aug2014-verifyErrMsg.xlsx|
	    
@RunnerClass1	    
Scenario: CH026-Attach2WeeklyMeetingMON-NewJLGApp-TrancheDate22Aug2014-DISBDate20Aug2014-verifyErrMsg
 
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH026-Attach2WeeklyMeetingMON-NewJLGApp-TrancheDate22Aug2014-DISBDate20Aug2014-verifyErrMsg.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH026-Attach2WeeklyMeetingMON-NewJLGApp-TrancheDate22Aug2014-DISBDate20Aug2014-verifyErrMsg.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH026-Attach2WeeklyMeetingMON-NewJLGApp-TrancheDate22Aug2014-DISBDate20Aug2014-verifyErrMsg.xlsx|
 Then i validate and Verify from "error" sheet 
	    |CH026-Attach2WeeklyMeetingMON-NewJLGApp-TrancheDate22Aug2014-DISBDate20Aug2014-verifyErrMsg.xlsx|
	    
@RunnerClass1	    
Scenario: CH027-Attach2WeeklyMeetingMON-NewJLGApp-TrancheDate22Aug2014-DISBDate25Aug2014-verifyErrMsg
 
 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH027-Attach2WeeklyMeetingMON-NewJLGApp-TrancheDate22Aug2014-DISBDate25Aug2014-verifyErrMsg.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH027-Attach2WeeklyMeetingMON-NewJLGApp-TrancheDate22Aug2014-DISBDate25Aug2014-verifyErrMsg.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH027-Attach2WeeklyMeetingMON-NewJLGApp-TrancheDate22Aug2014-DISBDate25Aug2014-verifyErrMsg.xlsx|
 Then i validate and Verify from "error" sheet 
	    |CH027-Attach2WeeklyMeetingMON-NewJLGApp-TrancheDate22Aug2014-DISBDate25Aug2014-verifyErrMsg.xlsx|
	    
@RunnerClass1  	
Scenario: CH028-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-ExactDate

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH028-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-ExactDate.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH028-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-ExactDate.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH028-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-ExactDate.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH028-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-ExactDate.xlsx|Input|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH028-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-ExactDate.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH028-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-ExactDate.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|Acc_Repayment|
	    
@RunnerClass1  	
Scenario: CH029-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-ExactDate

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH029-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-ExactDate.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH029-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-ExactDate.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH029-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-ExactDate.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH029-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-ExactDate.xlsx|Input|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH029-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-ExactDate.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH029-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-ExactDate.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|Acc_Repayment|
	   	
@RunnerClass1  	
Scenario: CH030-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-ExactDate

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH030-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-ExactDate.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH030-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-ExactDate.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH030-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-ExactDate.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH030-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-ExactDate.xlsx|Input|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH030-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-ExactDate.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH030-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-ExactDate.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|Acc_Repayment|

@RunnerClass1  	
Scenario: CH031-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-LateDate

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH031-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-LateDate.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH031-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-LateDate.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH031-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-LateDate.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH031-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-LateDate.xlsx|Input|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH031-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-LateDate.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH031-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-LateDate.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|Acc_Repayment|

@RunnerClass1  	
Scenario: CH032-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-LateDate

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH032-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-LateDate.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH032-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-LateDate.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH032-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-LateDate.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH032-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-LateDate.xlsx|Input|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH032-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-LateDate.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH032-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-LateDate.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|Acc_Repayment|

@RunnerClass1  	
Scenario: CH033-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-LateDate

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH033-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-LateDate.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH033-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-LateDate.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH033-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-LateDate.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH033-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-LateDate.xlsx|Input|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH033-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-LateDate.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH033-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-LateDate.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|Acc_Repayment|

@RunnerClass1  	
Scenario: CH034-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-EarlyDate

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH034-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-EarlyDate.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH034-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-EarlyDate.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH034-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-EarlyDate.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH034-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-EarlyDate.xlsx|Input|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH034-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-EarlyDate.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH034-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-ExactAmount-EarlyDate.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|Acc_Repayment|

@RunnerClass1  	
Scenario: CH035-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-EarlyDate

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH035-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-EarlyDate.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH035-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-EarlyDate.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH035-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-EarlyDate.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH035-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-EarlyDate.xlsx|Input|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH035-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-EarlyDate.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH035-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-LessAmount-EarlyDate.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|Acc_Repayment|

@RunnerClass1  	
Scenario: CH036-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-EarlyDate

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH036-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-EarlyDate.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH036-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-EarlyDate.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH036-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-EarlyDate.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH036-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-EarlyDate.xlsx|Input|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH036-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-EarlyDate.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH036-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-repayment-MoreAmount-EarlyDate.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|Acc_Repayment|
	
@RunnerClass1  	
Scenario: CH037-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-ExactDate

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH037-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-ExactDate.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH037-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-ExactDate.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH037-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-ExactDate.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH037-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-ExactDate.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH037-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-ExactDate.xlsx| Modify Transaction|Summary|Repayment Schedule|Future Schedule|
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH037-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-ExactDate.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH037-2WeeklyMeetingMON-NewJLGloan-DISB01NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-ExactDate.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_Repayment2|Acc_Repayment3|Acc_RepaymentDisbursement2|Acc_Disbursement2|

  @RunnerClass1  	
Scenario: CH038-2WeeklyMeetingMON-NewJLGloan-DISB07NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-LateDate

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH038-2WeeklyMeetingMON-NewJLGloan-DISB07NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-LateDate.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH038-2WeeklyMeetingMON-NewJLGloan-DISB07NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-LateDate.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH038-2WeeklyMeetingMON-NewJLGloan-DISB07NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-LateDate.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH038-2WeeklyMeetingMON-NewJLGloan-DISB07NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-LateDate.xlsx|Input1|Input2|Input3|Input4|Input5|Input6|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH038-2WeeklyMeetingMON-NewJLGloan-DISB07NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-LateDate.xlsx| Modify Transaction|Summary|Repayment Schedule|Future Schedule|
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH038-2WeeklyMeetingMON-NewJLGloan-DISB07NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-LateDate.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH038-2WeeklyMeetingMON-NewJLGloan-DISB07NOV2016-MakeRepaymentUpto2ndDISB-ExactAmount-LateDate.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_Repayment2|Acc_Repayment3|Acc_Repayment4|Acc_Repayment5|Acc_Repayment6|Acc_RepaymentDisbursement2|Acc_Disbursement2|
 
 @RunnerClass1  	
Scenario: CH039-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactAmount-EarlyDate

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH039-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactAmount-EarlyDate.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH039-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactAmount-EarlyDate.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH039-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactAmount-EarlyDate.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH039-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactAmount-EarlyDate.xlsx|Input1|Input2|Input3|Input4|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH039-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactAmount-EarlyDate.xlsx| Modify Transaction|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH039-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactAmount-EarlyDate.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH039-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactAmount-EarlyDate.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_Repayment2|Acc_Repayment3|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Repayment4|Acc_Periodic|

 @RunnerClass1  	
Scenario: CH040-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactDate-LessAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH040-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactDate-LessAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH040-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactDate-LessAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH040-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactDate-LessAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH040-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactDate-LessAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH040-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactDate-LessAmount.xlsx| Modify Transaction|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH040-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactDate-LessAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH040-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-ExactDate-LessAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Repayment2|Acc_Periodic|

@RunnerClass1  	
Scenario: CH041-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-LessAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH041-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-LessAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH041-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-LessAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH041-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-LessAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH041-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-LessAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH041-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-LessAmount.xlsx| Modify Transaction|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH041-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-LessAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH041-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-LessAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_Repayment2|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Periodic|

@RunnerClass1  	
Scenario: CH042-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-LessAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH042-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-LessAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH042-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-LessAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH042-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-LessAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH042-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-LessAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH042-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-LessAmount.xlsx| Modify Transaction|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH042-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-LessAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH042-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-LessAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_Repayment2|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Periodic|

@RunnerClass1  	
Scenario: CH043-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH043-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH043-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH043-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH043-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH043-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount.xlsx| Modify Transaction|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH043-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH043-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Repayment2|Acc_Periodic|

@RunnerClass1  	
Scenario: CH044-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH044-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-MoreAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH044-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH044-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-MoreAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH044-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-MoreAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH044-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-MoreAmount.xlsx| Modify Transaction|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH044-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-MoreAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH044-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-LateDate-MoreAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_Repayment2|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Periodic|

@RunnerClass1  	
Scenario: CH045-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH045-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH045-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH045-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH045-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH045-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount.xlsx| Modify Transaction|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH045-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH045-2WeeklyMeetingMON-NewJLGloan-DISB05DEC2016-MakeRepaymentUpto2ndDISB-EarlyDate-MoreAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_Repayment2|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Periodic|


@RunnerClass1  	
Scenario: CH046-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-LessAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH046-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-LessAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH046-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-LessAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH046-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-LessAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH046-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-LessAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH046-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-LessAmount.xlsx| Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH046-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-LessAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH046-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-LessAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Repayment2|Acc_Repayment3|Acc_Periodic|

@RunnerClass1  	
Scenario: CH047-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-ExactAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH047-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-ExactAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH047-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-ExactAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH047-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-ExactAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH047-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-ExactAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH047-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-ExactAmount.xlsx| Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH047-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-ExactAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH047-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-ExactAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Repayment2|Acc_Repayment3|Acc_Periodic|

@RunnerClass1  	
Scenario: CH048-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH047-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-ExactAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH048-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH048-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-MoreAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH048-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-MoreAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH048-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-MoreAmount.xlsx| Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH048-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-MoreAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH048-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-ExactDate-MoreAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Repayment2|Acc_Repayment3|Acc_Periodic|

 @RunnerClass1  	
Scenario: CH049-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-ExactAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH049-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-ExactAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH049-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-ExactAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH049-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-ExactAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH049-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-ExactAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH049-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-ExactAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs 
	    |CH049-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-ExactAmount.xlsx|Input3|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH049-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-ExactAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH049-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-ExactAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Repayment2|Acc_Repayment3|Acc_Periodic|

 @RunnerClass1  	
Scenario: CH050-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-LessAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH050-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-LessAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH050-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-LessAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH050-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-LessAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH050-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-LessAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH050-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-LessAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs 
	    |CH050-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-LessAmount.xlsx|Input3|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH050-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-LessAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH050-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-LessAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Repayment2|Acc_Repayment3|Acc_Periodic|

 @RunnerClass1  	
Scenario: CH051-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH051-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-MoreAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH051-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH051-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-MoreAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH051-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-MoreAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH051-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-MoreAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs 
	    |CH051-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-MoreAmount.xlsx|Input3|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH051-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-MoreAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH051-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-LateDate-MoreAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Repayment2|Acc_Repayment3|Acc_Periodic|

  @RunnerClass1  	
Scenario: CH052-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-ExactAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH052-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-ExactAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH052-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-ExactAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH052-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-ExactAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH052-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-ExactAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH052-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-ExactAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs 
	    |CH052-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-ExactAmount.xlsx|Input3|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH052-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-ExactAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH052-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-ExactAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Repayment2|Acc_Repayment3|Acc_Periodic|
 
 @RunnerClass1  	
Scenario: CH053-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-LessAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH053-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-LessAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH053-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-LessAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH053-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-LessAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH053-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-LessAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH053-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-LessAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs 
	    |CH053-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-LessAmount.xlsx|Input3|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH053-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-LessAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH053-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-LessAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Repayment2|Acc_Repayment3|Acc_Periodic|
 
  @RunnerClass1  	
Scenario: CH054-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH054-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-MoreAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH054-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH054-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-MoreAmount.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH054-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-MoreAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH054-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-MoreAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs 
	    |CH054-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-MoreAmount.xlsx|Input3|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH054-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-MoreAmount.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH054-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche02JAN2017-Make1stRepayOf2ndTranche-EarlyDate-MoreAmount.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Repayment2|Acc_Repayment3|Acc_Periodic|

 @RunnerClass1  	
Scenario: CH055-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-DISB2ndTranche02JAN2017-MakeAllRepayments

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH055-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-DISB2ndTranche02JAN2017-MakeAllRepayments.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH055-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-DISB2ndTranche02JAN2017-MakeAllRepayments.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH055-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-DISB2ndTranche02JAN2017-MakeAllRepayments.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH055-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-DISB2ndTranche02JAN2017-MakeAllRepayments.xlsx|Input1|Input2|Summary|Repayment Schedule|Future Schedule|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH055-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-DISB2ndTranche02JAN2017-MakeAllRepayments.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs 
	    |CH055-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-DISB2ndTranche02JAN2017-MakeAllRepayments.xlsx|Input3|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH055-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-DISB2ndTranche02JAN2017-MakeAllRepayments.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH055-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-DISB2ndTranche02JAN2017-MakeAllRepayments.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Repayment2|Acc_Repayment3|Acc_Periodic|
 
 @RunnerClass1  	
Scenario: CH056-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-WaiveChargefor2ndTranche-DISB2ndTranche02JAN2017

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH056-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-WaiveChargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH056-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-WaiveChargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH056-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-WaiveChargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH056-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-WaiveChargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|Input1|
 Then I "Waive 1st Charge" and verified the following tabs
	  	|CH056-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-WaiveChargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx| Charges1|
 Then I "Waive 2nd Charge" and verified the following tabs
	  	|CH056-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-WaiveChargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx| Charges2|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH056-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-WaiveChargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx| Modify Transaction|
 And I verified the "Charges Others Details" details successfully 
        |CH056-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-WaiveChargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH056-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-WaiveChargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|Input2|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH056-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-WaiveChargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|			

 @RunnerClass1  	
Scenario: CH057-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-Waive1Chargefor2ndTranche-DISB2ndTranche02JAN2017

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH057-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-Waive1Chargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH057-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-Waive1Chargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH057-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-Waive1Chargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH057-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-Waive1Chargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|Input1|
 Then I "Waive 1st Charge" and verified the following tabs
	  	|CH057-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-Waive1Chargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx| Charges1|
 Then I "Disburse 2nd Tranche" and verified the following tabs
	  	|CH057-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-Waive1Chargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx| Modify Transaction|
 And I verified the "Charges Others Details" details successfully 
        |CH057-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-Waive1Chargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|
 Then I make repayment and verified the following tabs 
	    |CH057-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-Waive1Chargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|Input2|Summary|Repayment Schedule|Future Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Transactions" details and read the transaction Id 
	  	|CH057-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-Waive1Chargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|			
 And I Navigate to Accounting web page
 Then I search with transaction id & verified the accounting entries
	   	|CH057-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-MakeRepayments-Waive1Chargefor2ndTranche-DISB2ndTranche02JAN2017.xlsx|Acc_RepaymentDisbursement1|Acc_Disbursement1|Acc_Repayment1|Acc_RepaymentDisbursement2|Acc_Disbursement2|Acc_Repayment2|Acc_Repayment3|Acc_Periodic|
 
@RunnerClass1  	
Scenario: CH058-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTO05DEC2016-DISB

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH058-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTO05DEC2017-DISB.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH058-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTO05DEC2017-DISB.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH058-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTO05DEC2017-DISB.xlsx|
 Then I verified the following Tabs details successfully 
	    |CH058-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTO05DEC2017-DISB.xlsx|Summary|Repayment Schedule|Future Schedule|
 Then I Do Undo Last Disbursement
        |CH058-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTO05DEC2017-DISB.xlsx|UndoDisbursal|
 Then I "Disburse abd Reschedule repayment Date" and verified the following tabs
	  	|CH058-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTO05DEC2017-DISB-reshedule.xlsx| Modify Transaction|Summary|Repayment Schedule|Future Schedule|Transactions|
 
 @RunnerClass1  	
Scenario: CH059-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo07NOV2016-DISB

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH059-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo07NOV2016-DISB.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH059-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo07NOV2016-DISB.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH059-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo07NOV2016-DISB.xlsx|
 Then I verified the following Tabs details successfully 
	    |CH059-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo07NOV2016-DISB.xlsx|Summary|Repayment Schedule|Future Schedule|
 Then I Do Undo Last Disbursement
        |CH059-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo07NOV2016-DISB.xlsx|UndoDisbursal|
 Then I "Disburse abd Reschedule repayment Date" and verified the following tabs
	  	|CH059-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo07NOV2016-DISB.xlsx| Modify Transaction|
 Then i validate and Verify from "error" sheet 
	    |CH059-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo07NOV2016-DISB.xlsx|
 
 @RunnerClass1  	
Scenario: CH060-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo28NOV2016-DISB

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH060-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo28NOV2016-DISB.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH060-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo28NOV2016-DISB.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH060-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo28NOV2016-DISB.xlsx|
 Then I verified the following Tabs details successfully 
	    |CH060-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo28NOV2016-DISB.xlsx|Summary|Repayment Schedule|
 Then I Do Undo Last Disbursement
        |CH060-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo28NOV2016-DISB.xlsx|UndoDisbursal|
 Then I "Disburse abd Reschedule repayment Date" and verified the following tabs
	  	|CH060-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo28NOV2016-DISB.xlsx| Modify Transaction|
 Then i validate and Verify from "error" sheet 
	    |CH060-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-RescheduleTo28NOV2016-DISB.xlsx|
 
@RunnerClass1  	
Scenario: CH061-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo02JAN2017

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH061-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo02JAN2017.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH061-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo02JAN2017.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH061-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo02JAN2017.xlsx|
 Then I make repayment and verified the following tabs
	    |CH061-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo02JAN2017.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH061-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo02JAN2017.xlsx| Modify Transaction|
 Then i validate and Verify from "error" sheet 
	    |CH061-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo02JAN2017.xlsx|

@RunnerClass1  	
Scenario: CH062-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo23JAN2017

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH062-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo23JAN2017.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH062-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo23JAN2017.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH062-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo23JAN2017.xlsx|
 Then I make repayment and verified the following tabs
	    |CH062-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo23JAN2017.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH062-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo23JAN2017.xlsx| Modify Transaction|
 Then i validate and Verify from "error" sheet 
	    |CH062-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo23JAN2017.xlsx|
 
@RunnerClass1  	
Scenario: CH063-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo30JAN2017

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH063-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo30JAN2017.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH063-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo30JAN2017.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH063-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo30JAN2017.xlsx|
 Then I make repayment and verified the following tabs
	    |CH063-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo30JAN2017.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH063-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo30JAN2017.xlsx| Modify Transaction|Summary|Repayment Schedule|
 
 @RunnerClass1  	
Scenario: CH064-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-DISBTrancheRescheduleTo05DEC2017

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH064-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-DISBTrancheRescheduleTo05DEC2017.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH064-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-DISBTrancheRescheduleTo05DEC2017.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH064-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-DISBTrancheRescheduleTo05DEC2017.xlsx|
 Then I Do Undo Last Disbursement
	    |CH064-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-DISBTrancheRescheduleTo05DEC2017.xlsx|UndoDisbursal|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH064-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-DISBTrancheRescheduleTo05DEC2017.xlsx| Modify Transaction|Summary|Repayment Schedule|
 
 @RunnerClass1  	
Scenario: CH065-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo30JAN2017

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH065-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo30JAN2017.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH065-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo30JAN2017.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH065-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo30JAN2017.xlsx|
 Then I make repayment and verified the following tabs
	    |CH065-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo30JAN2017.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH065-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RepayUpTo2ndTranche-DISB2ndTrancheRescheduleTo30JAN2017.xlsx| Modify Transaction|Summary|Repayment Schedule|
 
 @RunnerClass1  	
Scenario: CH066-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-DISBTrancheRescheduleTo05DEC2016-Repay05DEC2016

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH066-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-DISBTrancheRescheduleTo05DEC2016-Repay05DEC2016.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH066-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-DISBTrancheRescheduleTo05DEC2016-Repay05DEC2016.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH066-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-DISBTrancheRescheduleTo05DEC2016-Repay05DEC2016.xlsx|
 Then I Do Undo Last Disbursement
	    |CH066-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-DISBTrancheRescheduleTo05DEC2016-Repay05DEC2016.xlsx|UndoDisbursal|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH066-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-DISBTrancheRescheduleTo05DEC2016-Repay05DEC2016.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH066-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-UNDODISB-DISBTrancheRescheduleTo05DEC2016-Repay05DEC2016.xlsx|Input|Summary|Repayment Schedule|Future Schedule|Transactions|
 
 
 @RunnerClass1  	
Scenario: CH067-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-Repay05DEC2016-ExactAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH067-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-Repay05DEC2016-ExactAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH067-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-Repay05DEC2016-ExactAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH067-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-Repay05DEC2016-ExactAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH067-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-Repay05DEC2016-ExactAmount.xlsx|UndoDisbursal|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH067-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-Repay05DEC2016-ExactAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH067-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-Repay05DEC2016-ExactAmount.xlsx|Input|Summary|Repayment Schedule|Future Schedule|Transactions|
 
 
 @RunnerClass1  	
Scenario: CH068-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-Repay05DEC2016-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH068-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-Repay05DEC2016-MoreAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH068-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-Repay05DEC2016-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH068-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-Repay05DEC2016-MoreAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH068-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-Repay05DEC2016-MoreAmount.xlsx|UndoDisbursal|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH068-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-Repay05DEC2016-MoreAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH068-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-Repay05DEC2016-MoreAmount.xlsx|Input|Summary|Repayment Schedule|Future Schedule|Transactions|
 
 @RunnerClass1  	
Scenario: CH069-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH069-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-MoreAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH069-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH069-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-MoreAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH069-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-MoreAmount.xlsx|UndoDisbursal|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH069-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-MoreAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH069-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-MoreAmount.xlsx|Input|Summary|Repayment Schedule|Future Schedule|Transactions|
 
 
 @RunnerClass1  	
Scenario: CH070-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-LessAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH070-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-LessAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH070-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-LessAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH070-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-LessAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH070-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-LessAmount.xlsx|UndoDisbursal|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH070-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-LessAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH070-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-LessAmount.xlsx|Input|Summary|Repayment Schedule|Future Schedule|Transactions|
 
 @RunnerClass1  	
Scenario: CH071-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH071-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-MoreAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH071-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH071-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-MoreAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH071-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-MoreAmount.xlsx|UndoDisbursal|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH071-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-MoreAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH071-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-EarlyDate-MoreAmount.xlsx|Input|Summary|Repayment Schedule|Future Schedule|Transactions|
 
 @RunnerClass1  	
Scenario: CH072-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-ExactAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH072-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-ExactAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH072-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-ExactAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH072-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-ExactAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH072-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-ExactAmount.xlsx|UndoDisbursal|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH072-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-ExactAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH072-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-ExactAmount.xlsx|Input|Summary|Repayment Schedule|Future Schedule|Transactions|
 
 @RunnerClass1  	
Scenario: CH073-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-LessAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH073-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-LessAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH073-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-LessAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH073-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-LessAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH073-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-LessAmount.xlsx|UndoDisbursal|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH073-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-LessAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH073-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-LessAmount.xlsx|Input|Summary|Repayment Schedule|Future Schedule|Transactions|
 
 @RunnerClass1  	
Scenario: CH074-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH074-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-MoreAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH074-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH074-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-MoreAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH074-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-MoreAmount.xlsx|UndoDisbursal|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH074-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-MoreAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH074-2WeeklyMeetingMON-NewJLGloan-DISB1stTranche07NOV2016-RescheduleTo05DEC2016-LateDate-MoreAmount.xlsx|Input|Summary|Repayment Schedule|Future Schedule|Transactions|
 
@RunnerClass1  	
Scenario: CH075-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-ExactAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH075-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-ExactAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH075-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-ExactAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH075-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-ExactAmount.xlsx|
 Then I make repayment and verified the following tabs
	    |CH075-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-ExactAmount.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH075-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-ExactAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH075-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-ExactAmount.xlsx|Input4|Summary|Repayment Schedule|Future Schedule|Transactions|
 
@RunnerClass1  	
Scenario: CH076-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-LessAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH076-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-LessAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH076-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-LessAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH076-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-LessAmount.xlsx|
 Then I make repayment and verified the following tabs
	    |CH076-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-LessAmount.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH076-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-LessAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH076-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-LessAmount.xlsx|Input4|Summary|Repayment Schedule|Future Schedule|Transactions|
 
@RunnerClass1  	
Scenario: CH077-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH077-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-MoreAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH077-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH077-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-MoreAmount.xlsx|
 Then I make repayment and verified the following tabs
	    |CH077-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-MoreAmount.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH077-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-MoreAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH077-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-ExactDate-MoreAmount.xlsx|Input4|Summary|Repayment Schedule|Future Schedule|Transactions|
 
@RunnerClass1  	
Scenario: CH078-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-EarlyDate-ExactAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH078-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-EarlyDate-ExactAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH078-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-EarlyDate-ExactAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH078-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-EarlyDate-ExactAmount.xlsx|
 Then I make repayment and verified the following tabs
	    |CH078-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-EarlyDate-ExactAmount.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH078-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-EarlyDate-ExactAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH078-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-EarlyDate-ExactAmount.xlsx|Input4|Summary|Repayment Schedule|Future Schedule|Transactions|
 
 
@RunnerClass1  	
Scenario: CH081-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-ExactAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH081-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-ExactAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH081-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-ExactAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH081-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-ExactAmount.xlsx|
 Then I make repayment and verified the following tabs
	    |CH081-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-ExactAmount.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH081-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-ExactAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH081-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-ExactAmount.xlsx|Input4|Summary|Repayment Schedule|Future Schedule|Transactions|
 
@RunnerClass1  	
Scenario: CH082-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-LessAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH082-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-LessAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH082-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-LessAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH082-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-LessAmount.xlsx|
 Then I make repayment and verified the following tabs
	    |CH082-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-LessAmount.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH082-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-LessAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH082-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-LessAmount.xlsx|Input4|Summary|Repayment Schedule|Future Schedule|Transactions|
 
@RunnerClass1  	
Scenario: CH083-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH083-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-MoreAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH083-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH083-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-MoreAmount.xlsx|
 Then I make repayment and verified the following tabs
	    |CH083-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-MoreAmount.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH083-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-MoreAmount.xlsx| Modify Transaction|
 Then I make repayment and verified the following tabs
	    |CH083-2WeeklyMeetingMON-NewJLGloan-DISB2ndTranche-RescheduleTo30JAN2017-Reapay-LateDate-MoreAmount.xlsx|Input4|Summary|Repayment Schedule|Future Schedule|Transactions|
 
@RunnerClass1  	
Scenario: CH084-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-ExactAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH084-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-ExactAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH084-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-ExactAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH084-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-ExactAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH084-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-ExactAmount.xlsx|UndoDisbursal|
 Then I "Disburse 1st Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH084-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-ExactAmount.xlsx| Modify Transaction1|
 Then I make repayment and verified the following tabs
	    |CH084-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-ExactAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH084-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-ExactAmount.xlsx| Modify Transaction2|
 Then I make repayment and verified the following tabs
	    |CH084-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-ExactAmount.xlsx|Input3|Summary|Repayment Schedule|Transactions|

@RunnerClass1  	
Scenario: CH085-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-LessAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH085-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-LessAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH085-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-LessAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH085-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-LessAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH085-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-LessAmount.xlsx|UndoDisbursal|
 Then I "Disburse 1st Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH085-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-LessAmount.xlsx| Modify Transaction1|
 Then I make repayment and verified the following tabs
	    |CH085-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-LessAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH085-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-LessAmount.xlsx| Modify Transaction2|
 Then I make repayment and verified the following tabs
	    |CH085-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-LessAmount.xlsx|Input3|Summary|Repayment Schedule|Transactions|
 
@RunnerClass1  	
Scenario: CH086-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH086-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-MoreAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH086-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH086-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-MoreAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH086-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-MoreAmount.xlsx|UndoDisbursal|
 Then I "Disburse 1st Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH086-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-MoreAmount.xlsx| Modify Transaction1|
 Then I make repayment and verified the following tabs
	    |CH086-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-MoreAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH086-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-MoreAmount.xlsx| Modify Transaction2|
 Then I make repayment and verified the following tabs
	    |CH086-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-ExactDate-MoreAmount.xlsx|Input3|Summary|Repayment Schedule|Transactions|
 
@RunnerClass1  	
Scenario: CH087-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-ExactAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH087-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-ExactAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH087-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-ExactAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH087-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-ExactAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH087-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-ExactAmount.xlsx|UndoDisbursal|
 Then I "Disburse 1st Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH087-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-ExactAmount.xlsx| Modify Transaction1|
 Then I make repayment and verified the following tabs
	    |CH087-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-ExactAmount.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH087-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-ExactAmount.xlsx| Modify Transaction2|
 Then I make repayment and verified the following tabs
	    |CH087-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-ExactAmount.xlsx|Input4|Summary|Repayment Schedule|Future Schedule|Transactions|

@RunnerClass1  	
Scenario: CH088-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-LessAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH088-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-LessAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH088-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-LessAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH088-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-LessAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH088-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-LessAmount.xlsx|UndoDisbursal|
 Then I "Disburse 1st Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH088-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-LessAmount.xlsx| Modify Transaction1|
 Then I make repayment and verified the following tabs
	    |CH088-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-LessAmount.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH088-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-LessAmount.xlsx| Modify Transaction2|
 Then I make repayment and verified the following tabs
	    |CH088-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-LessAmount.xlsx|Input4|Summary|Repayment Schedule|Future Schedule|Transactions|
 
@RunnerClass1  	
Scenario: CH089-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH089-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-MoreAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH089-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH089-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-MoreAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH089-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-MoreAmount.xlsx|UndoDisbursal|
 Then I "Disburse 1st Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH089-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-MoreAmount.xlsx| Modify Transaction1|
 Then I make repayment and verified the following tabs
	    |CH089-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-MoreAmount.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH089-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-MoreAmount.xlsx| Modify Transaction2|
 Then I make repayment and verified the following tabs
	    |CH089-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-EarlyDate-MoreAmount.xlsx|Input4|Summary|Repayment Schedule|Future Schedule|Transactions|
 
@RunnerClass1  	
Scenario: CH090-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-ExactAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH090-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-ExactAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH090-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-ExactAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH090-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-ExactAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH090-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-ExactAmount.xlsx|UndoDisbursal|
 Then I "Disburse 1st Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH090-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-ExactAmount.xlsx| Modify Transaction1|
 Then I make repayment and verified the following tabs
	    |CH090-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-ExactAmount.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH090-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-ExactAmount.xlsx| Modify Transaction2|
 Then I make repayment and verified the following tabs
	    |CH090-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-ExactAmount.xlsx|Input4|Summary|Repayment Schedule|Future Schedule|Transactions|
 
@RunnerClass1  	
Scenario: CH091-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-LessAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH091-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-LessAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH091-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-LessAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH091-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-LessAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH091-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-LessAmount.xlsx|UndoDisbursal|
 Then I "Disburse 1st Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH091-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-LessAmount.xlsx| Modify Transaction1|
 Then I make repayment and verified the following tabs
	    |CH091-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-LessAmount.xlsx|Input1|Input2|Input3|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH091-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-LessAmount.xlsx| Modify Transaction2|
 Then I make repayment and verified the following tabs
	    |CH091-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-LessAmount.xlsx|Input4|Summary|Repayment Schedule|Future Schedule|Transactions|
 
@RunnerClass1  	
Scenario: CH092-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-MoreAmount

 Given I setup the center
 When I entered the values into "center" from "center" sheet
        |CH092-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-MoreAmount.xlsx|
 When I entered the values into "Group" from "Group" sheet
        |CH092-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-MoreAmount.xlsx|
 Then I entered the values into client from "Input" sheet
        |Createclient.xlsx|
 Then I Navigate Back to Current "center" Page
 When I set up the new create loan from "NewJLGLoanInput" sheet
        |CH092-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-MoreAmount.xlsx|
 Then I Do Undo Last Disbursement
	    |CH092-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-MoreAmount.xlsx|UndoDisbursal|
 Then I "Disburse 1st Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH092-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-MoreAmount.xlsx| Modify Transaction1|
 Then I make repayment and verified the following tabs
	    |CH092-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-MoreAmount.xlsx|Input1|Input2|
 Then I "Disburse 2nd Tranche and Reschedule repayment Date" and verified the following tabs
	  	|CH092-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-MoreAmount.xlsx| Modify Transaction2|
 Then I make repayment and verified the following tabs
	    |CH092-2WeeklyMeetingMON-NewJLGloan-DISB1stTrancheRescheduleTo05DEC2016-DISB2ndTrancheRescheduleTo16JAN2017-Reapay-LateDate-MoreAmount.xlsx|Input3|Summary|Repayment Schedule|Future Schedule|Transactions|
  