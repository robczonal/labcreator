Feature: Summary Page
    Scenario: User views summary page
            Given I have created a project
            And I visit the project summary page
            And I have no analysess
            Then I should see the empty message "Empty"