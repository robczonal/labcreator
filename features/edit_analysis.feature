Feature: admin edits an analysis
    Scenario: Administrator edits an analysis
            Given I go to the edit analysis page
            And I fillea in "name" with "analysis 1"
            When I pressea "Update Analysis"
            Then I shouldea see "Analysis was successfully updated"