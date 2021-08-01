Feature: TC3_Divisiion Functions from Online Calculator App

@Divide
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