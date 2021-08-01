Feature: TC9_Divisiion Functions from Online Calculator App

@Divide
Scenario Outline: Divide zero by any interger
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|0    |9    |0  |
	#|0    |5    |0  |
	#|0    |2    |0  |