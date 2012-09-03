Feature: admin edits a procedure
    Scenario: Administrator edits a procedure
            Given I go to the edit procedure page
            And I fill ep in "name" with "procedure 1"
            When I press ep "Update Procedurex"
            Then I should ep see "Procedurex was successfully updated"