Feature: user creates a comment
    Scenario: User adds a comment
            Given I go to the project details page
            And I fill in "subject" with "urgent"
            When I press "Create Comment"
            Then I should be on the project details page
            And I should see "urgent"