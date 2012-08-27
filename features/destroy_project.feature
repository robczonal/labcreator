Feature: user destroys a project
    Scenario: User destroys a project
            Given I go to the projects page
            And I press "Destroy"
	    When I confirm popup
            Then I should be on the projects page
            And I should see "Projects"