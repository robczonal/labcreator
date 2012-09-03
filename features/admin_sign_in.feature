Feature: admin sign in
	Scenario: administrator signs in 
	Given I go asi to the home page
            When I press asi "Sign in as administrator"
            Then I should be on the admins sign_in page
	    Given I fill asi in "Email" with "aberdeenlab@gmail.com"
	    And I fill aasi in "Password" with "meston209"
	    When I click asi "Sign in"
	    Then I should asi see "Signed in successfully" 
	
	
