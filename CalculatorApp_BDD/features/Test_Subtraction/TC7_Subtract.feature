Feature: TC7_Subtraction Functions from Online Calculator App

@Subtract
Scenario Outline: Subtract for more than two integers
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Subtraction" operation for multiple integers "<values>"
Then I verify the end result "<expectedResult>"
Examples:
	|values|expectedResult|
	|9,2,1         |6|
