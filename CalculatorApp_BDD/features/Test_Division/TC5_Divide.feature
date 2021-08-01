Feature: TC5_Divisiion Functions from Online Calculator App

@Divide
Scenario Outline: Divide lower value by higher value with decimal point
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|2.5    |5.5    |0.45454546           |
	#|3.5    |9.5    |0.36842105          |
	#|2.5     |7.5     |0.33333333        |