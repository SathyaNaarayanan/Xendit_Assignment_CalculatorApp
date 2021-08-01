Feature: TC2_Divisiion Functions from Online Calculator App

@Divide
Scenario Outline: Divide higher value by lower value for Single unit number
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|5     |2     |2.5           |
	#|8     |2     |4            |
	#|7     |3     |2.33333333   |