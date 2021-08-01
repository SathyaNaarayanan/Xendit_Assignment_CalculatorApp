Feature: TC8_Subtraction Functions from Online Calculator App

@Subtract
Scenario Outline: Subtract lower value from higher value for number greater than single unit
Given I launch Calculator application
And I verify online calculator page is displayed
When I choose "Subtraction" operation "<value1>" from "<value2>"
Then I verify the end result "<expectedResult>"
Examples:
	|value1|value2|expectedResult|
	|50    |22    |28            |
	#|80     |40     |40            |
	#|75     |25     |50            |