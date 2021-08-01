Feature: TC4_Addition Functions from Online Calculator App
@Add
Scenario Outline: Add higher value and lower value for number greater than single unit
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Addition" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|550    |20    |570            |
	#|1000     |999     |1999            |
	#|150     |2     |152            |