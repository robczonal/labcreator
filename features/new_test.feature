Feature: user creates a test
    Scenario: User adds a test
	    Given I am logged in as "aberdeenlab@gmail.com" with password "meston209"
            Given I go to the new test page
            When I write in "Name" with "water content"
            And I press test "Create Testx"
            Then I should be on the test show page
            And I should see "water content"