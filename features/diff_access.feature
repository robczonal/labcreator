Feature: different access for admins and users
Scenario: user tries to sign in as admin
		Given I go ua to the home page
            When I press ua "Sign in as administrator"
            Then I should ua be on the admins sign_in page
	    Given I fill ua in "Email" with "test@test.com"
	    And I fill ua in "Password" with "password"
	    When I click ua "Sign in"
	    Then I should ua see "Invalid email or password" 