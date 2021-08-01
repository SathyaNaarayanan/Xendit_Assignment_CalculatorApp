Feature: TC1_Addition Functions from Online Calculator App
@Add
Scenario Outline: Add lower value and higher value for Single unit number
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Addition" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|2     |5     |7             |
	#|4     |8     |12             |
	#|9     |10     |19             |