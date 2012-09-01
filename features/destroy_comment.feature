Feature: user destroys a comment
    Scenario: User destroys a comment
            Given I go to the project details dc page
            And I pressdc "Destroy Comment"
	    When I confirmdc popup
            Then I shoulddc be on the project details page
            And I shoulddc see "Project Details"