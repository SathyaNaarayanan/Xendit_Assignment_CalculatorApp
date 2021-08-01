Feature: TC7_Divisiion Functions from Online Calculator App

@Divide
Scenario Outline: Verify multiple decimal point not allowed on Division
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|5.5.5    |5    |1.11          |
	#|7.5.0   |3.5     |2.14285714 |
	#|9.0.0   |3     |3            |