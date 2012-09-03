Feature: admin edits an item of equipment
    Scenario: Administrator edits an item of equipment
            Given I have created an equipment
	    Given I go to the edit equipment page
            And I fill ee in "name" with "equipment 1"
            When I press ee "Update Equipment"
            Then I should ee see "Equipment was successfully updated"