Feature: admin edits a test
    Scenario: Administrator edits a test
            Given I go to the edit test page
            And I fill et in "name" with "test 1"
            When I press et "Update Testx"
            Then I should et see "Testx was successfully updated"