Feature: TC6_Addition Functions from Online Calculator App
@Add
Scenario Outline: Add lower negative value1 with higher positive value2 
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Addition" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|-10    |20    |10            |
	#|-15     |99    |84            |
	#|-999    |1000     |1            |