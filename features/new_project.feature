Feature: user creates a project
    Scenario: User adds a project
            Given I go to the new project page
            And I fill in "name" with "project 1"
            When I press "Create Project"
            Then I should be on the project show page
            And I should see "project 1"