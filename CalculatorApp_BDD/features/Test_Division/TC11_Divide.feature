Feature: TC11_Divisiion Functions from Online Calculator App

@Divide
Scenario Outline: Divide for more than two integers
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation for multiple integers "<values>"
Then I verify the end result "<expectedResult>"
Examples:
	|values|expectedResult|
	|9,3,3         |1|