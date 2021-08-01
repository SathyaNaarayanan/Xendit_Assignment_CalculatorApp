Feature: TC10_Divisiion Functions from Online Calculator App

@Divide
Scenario Outline: Verify Error message when any value divide by zero
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|9    |0    |Error  |
	#|6    |0    |Error  |
	#|4    |0    |Error  |