Feature: user creates a comment
    Scenario: User adds a comment
            Given I go to the project details cc page
            And I fillcc in "title" with "urgent"
	    And I fillccc in "body" with "urgent comment"
            When I presscc "Create Comment"
            Then I shouldcc be on the project details page
            And I shouldcc see "urgent"