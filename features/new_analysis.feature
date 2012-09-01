Feature: user creates an analysis
    Scenario: User adds an analysis
            Given I go to the new analysis page
            And I filly in "name" with "oil analysis"
            When I press analysis "Create Analysis"
	    Then I shouldna see "oil analysis"