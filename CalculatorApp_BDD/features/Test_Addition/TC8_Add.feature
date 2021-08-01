Feature: TC8_Addition Functions from Online Calculator App
@Add
Scenario Outline: Add higher value and lower value with decimal point
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Addition" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|3.5    |1.5    |5            |
	#|100.25   |3.5     |103.75          |
	#|2.5     |0.12     |2.62          |
