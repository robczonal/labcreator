Feature: Calculate space

Scenario: Calculate space
Given I havets 1 x 100 square mm item in my basket
And I go to the project ts summary page 
Then Total Surface Space = 100 square mm