Feature: TC5_Subtraction Functions from Online Calculator App

@Subtract
Scenario Outline: Subtract higher value from lower value with decimal point
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Subtraction" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|1.5    |3.5    |-2            |
	#|2.3   |8.4     |-6.1          |
	#|2.5     |7.5     |-5           |
