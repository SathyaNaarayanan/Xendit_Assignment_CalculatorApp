Feature: TC4_Subtraction Functions from Online Calculator App

@Subtract
Scenario Outline: Subtract lower value from higher value with decimal point
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Subtraction" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|5.5    |2.4    |3.1            |
	#|9.5    |6.3     |3.2          |
	#|7.5     |2.5     |5           |
