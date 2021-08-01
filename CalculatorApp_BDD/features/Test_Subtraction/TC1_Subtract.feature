Feature: TC1_Subtraction Functions from Online Calculator App

@Subtract
Scenario Outline: Subtract lower value from higher value for Single unit number
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Subtraction" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|5     |2     |3             |
	#|4     |3     |1             |
	#|9     |5     |4             |