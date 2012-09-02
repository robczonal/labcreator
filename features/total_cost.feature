Feature: Calculate
Shows the total cost of equipment for a project
Scenario: Calculate cost
Given I have created a tc project
Given I have 1 x $10 item in my basket
And I visit the tc project summary page 
Then Total Cost = $10


