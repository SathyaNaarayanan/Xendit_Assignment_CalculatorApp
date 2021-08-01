Feature: TC2_Subtraction Functions from Online Calculator App

@Subtract
Scenario Outline: Subtract higher value from lower value for Single unit number
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Subtraction" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|3     |5     |-2            |
	#|6     |7     |-1            |
	#|4     |8     |-4            |