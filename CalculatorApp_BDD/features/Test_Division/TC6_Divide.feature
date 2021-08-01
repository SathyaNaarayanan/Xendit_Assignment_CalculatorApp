Feature: TC6_Divisiion Functions from Online Calculator App

@Divide
Scenario Outline: Divide higher value by lower value with decimal point
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|3.5    |1.5    |2.33333333  |
	#|8.4   |2.2     |3.81818182 |
	#|7.5     |2.5     |3           |