Feature: user creates a comment
    Scenario: User adds a comment
            Given I have cc created a project
	    Given I go to the project details cc page
            And I fillcc in "title" with "urgent"
	    And I fillccc in "Comment" with "urgent comment"
            When I presscc "Create Comment"
            And I shouldcc see "urgent"