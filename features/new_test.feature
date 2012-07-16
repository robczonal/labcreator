Feature: user creates a test
    Scenario: User adds a test
            Given I go to the new test page
            And I write in "name" with "water content"
            When I press test "Create Testx"
            Then I should be on the test show page
            And I should see "water content"