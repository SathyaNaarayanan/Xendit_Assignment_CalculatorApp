Feature: TC9_Addition Functions from Online Calculator App
@Add
Scenario Outline: Verify multiple decimal point not allowed in Addition
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Addition" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|2.6.1    |1.5.5    |4.16          |
	#|4.5.2   |7.0.5     |11.57        |
	#|5.0.9   |3.2.7     |8.36         |
