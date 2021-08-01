@Subtraction
Feature: Test_Subtraction Functions from Online Calculator App

Scenario Outline: Subtract lower value from higher value for Single unit number
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Subtraction" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|5     |2     |3             |
	#|4     |3     |1             |
	#|9     |5     |4             |
	

Scenario Outline: Subtract higher value from lower value for Single unit number
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Subtraction" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|3     |5     |-2            |
	#|6     |7     |-1            |
	#|4     |8     |-4            |


Scenario Outline: Subtract lower value from higher value for number greater than single unit
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Subtraction" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|10    |22    |-12            |
	#|80     |40     |40            |
	#|75     |25     |50            |


Scenario Outline: Subtract lower value from higher value with decimal point
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Subtraction" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|5.5    |2.4    |3.1            |
	#|9.5    |6.3     |3.2          |
	#|7.5     |2.5     |5           |


Scenario Outline: Subtract higher value from lower value with decimal point
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Subtraction" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|1.5    |3.5    |-2            |
	#|2.3   |8.4     |-6.1          |
	#|2.5     |7.5     |-5           |


Scenario Outline: Verify multiple decimal point not allowed on subtracting
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Subtraction" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|2.6.1    |1.5.5    |1.06          |
	#|4.5.2   |7.0.5     |-2.53        |
	#|5.0.9   |3.2.7     |1.82         |
	