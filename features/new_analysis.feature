Feature: user creates an analysis
    Scenario: User adds an analysis
            Given I go to the new analysis page
            And I filly in "name" with "oil analysis"
            When I press analysis "Create Analysis"
            Then I should be on the analysis show page
            And I should see "oil analysis"