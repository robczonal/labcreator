Feature: user creates a procedure
    Scenario: User adds a procedure
            Given I go to the new procedure page
            And I fill "name" with "bs&w by centrifuge"
            When I press proc "Create Procedurex"
            Then I should be on the procedure show page
            And I should see proc "bs&w by centrifuge"