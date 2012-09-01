Feature: user creates an equipment
    Scenario: User adds an equipment
	    Given I go to the new equipment page
            And I fillx in "name" with "toaster"
            When I press equip "Create Equipment"
            Then I should be on the equipment show page
            And I should see equip "toaster"