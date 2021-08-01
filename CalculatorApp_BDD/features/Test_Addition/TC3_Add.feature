Feature: TC3_Addition Functions from Online Calculator App
@Add
Scenario Outline: Add lower value and higher value for number greater than single unit
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Addition" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|10    |220    |230            |
	#|1     |999     |1000            |
	#|50     |100     |150            |