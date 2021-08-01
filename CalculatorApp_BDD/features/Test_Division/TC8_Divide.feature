Feature: TC8_Divisiion Functions from Online Calculator App

@Divide
Scenario Outline: Divide Negative Integer value
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|-6    |3    |-2  |
	#|-10.5   |5     |-2.1 |
	#|-7.5     |2.5     |-3           |