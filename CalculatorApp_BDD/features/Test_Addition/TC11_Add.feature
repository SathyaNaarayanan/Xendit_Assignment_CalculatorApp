Feature: TC11_Addition Functions from Online Calculator App
@Add
Scenario Outline: Add two maximum integer
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Addition" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|999999999    |999999999    |2e+9          |
