Feature: user creates a test
    Scenario: User adds a test
         Given I am logged in as "aberdeenlab@gmail.com" with password "meston209"
	    And I go to the new test page
	    And I log in as "aberdeenlab@gmail.com" with password "meston209"
	    Then I shouldx see "New testx"
            When I write in "name" with "water content"
            And I press test "Create Testx"
            Then I should be on the test show page
            And I should see "water content"