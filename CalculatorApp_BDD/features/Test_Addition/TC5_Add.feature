Feature: TC5_Addition Functions from Online Calculator App
@Add
Scenario Outline: Add higher negative value and lower positive value 
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Addition" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|-550    |20    |-530            |
	#|-15     |5    |-10            |
	#|-999    |88     |-911            |