Feature: user destroys a comment
    Scenario: User destroys a comment
            Given I go to the project details dc page
	    And I filldc in "title" with "test"
	    And I filldcc in "Comment" with "test"
	    And I pressdc "Create Comment"
            Then I pressdcc "Destroy Comment"
	    When I confirmdc popup
            Then I shoulddc see "Project Details"