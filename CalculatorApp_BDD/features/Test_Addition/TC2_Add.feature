Feature: TC2_Addition Functions from Online Calculator App

@Add
Scenario Outline: Add higher value and lower value for Single unit number
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Addition" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|3     |5     |8            |
	#|6     |7     |13            |
	#|4     |8     |12            |