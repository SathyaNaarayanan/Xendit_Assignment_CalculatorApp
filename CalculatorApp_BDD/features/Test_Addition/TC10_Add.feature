Feature: TC10_Addition Functions from Online Calculator App
@Add
Scenario Outline: Add for more than two integers
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Addition" operation for multiple integers "<values>"
Then I verify the end result "<expectedResult>"
Examples:
	|values|expectedResult|
	|9,2,10         |21|
