 Feature:CHAITANYA

Background:
	Given I navigate to Finflux using "chaitanya#/"
	And I login into Finflux site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully
	

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
 
 
 