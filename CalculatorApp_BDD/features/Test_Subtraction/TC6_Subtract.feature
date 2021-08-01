Feature: TC6_Subtraction Functions from Online Calculator App

@Subtract
Scenario Outline: Verify multiple decimal point not allowed on subtracting
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Subtraction" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|2.6.1    |1.5.5    |1.06          |
	#|4.5.2   |7.0.5     |-2.53        |
	#|5.0.9   |3.2.7     |1.82         |
