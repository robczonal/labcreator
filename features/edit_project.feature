Feature: user edits a project
    Scenario: User edits a project
            Given I go to the edit project page
            And I fill in "name" with "project 1"
            When I press "Update Project"
            Then I should be on the project show page
            And I should see "project 1"