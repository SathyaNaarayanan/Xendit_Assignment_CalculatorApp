Feature: TC1_Divisiion Functions from Online Calculator App

@Divide
Scenario Outline: Divide lower value by higher value for Single unit number
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|2     |5     |0.4             |
	#|3     |6     |0.5            |
	#|5     |9     |0.55555556     |