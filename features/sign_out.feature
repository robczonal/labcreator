Feature: user sign out
Tests whether a user, having succesfully signed in, can sign out
    Scenario: User signs out
            Given I go so to the home page
            When I press so "Sign in"
            Then I should so be on the users sign_in page
	    Given I writeso in "Email" with "test@test.com"
	    And I writeuso in "Password" with "password"
	    When I click so "Sign in"
	    Then I should so see "Signed in successfully"
	    When I click uso "Sign out"
	    Then I should uso see "Signed out successfully"