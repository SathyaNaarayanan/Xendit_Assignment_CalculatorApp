@Divide
Feature: Test_Divisiion Functions from Online Calculator App

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


Scenario Outline: Divide higher value by lower value for Single unit number
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|5     |2     |2.5           |
	#|8     |2     |4            |
	#|7     |3     |2.33333333   |


Scenario Outline: Divide lower value by higher value for number greater than single unit
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|20    |80    |0.25            |
	#|35     |55     |0.63636364   |
	#|25     |75     |0.33333333   |
	

Scenario Outline: Divide higher value by lower value for number greater than single unit
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|80    |20    |4            |
	#|35     |5     |7   |
	#|100     |50     |2   |


Scenario Outline: Divide lower value by higher value with decimal point
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|2.5    |5.5    |0.43636364           |
	#|3.5    |9.5    |0.36842105          |
	#|2.5     |7.5     |0.33333333        |


Scenario Outline: Divide higher value by lower value with decimal point
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|3.5    |1.5    |2.33333333  |
	#|8.4   |2.2     |3.81818182 |
	#|7.5     |2.5     |3           |


Scenario Outline: Verify multiple decimal point not allowed on Division
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Subtraction" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|5.5.5    |5    |1.11          |
	#|7.5.0   |3.5     |2.14285714 |
	#|9.0.0   |3     |3            |


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


Scenario Outline: Verify Error message when any value divide by zero
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Division" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|9    |0    |Error  |
	#|6    |0    |Error  |
	#|4    |0    |Error  |