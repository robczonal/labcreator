Feature: user sign in
    Scenario: User signs in
            Given I go to the home page
            When I pressx "Sign in"
            Then I should be on the users sign_in page
	    Given I writeu in "Email" with "test@test.com"
	    And I writeur in "Password" with "password"
	    When I clickx "Sign in"
            Then I shouldusu see "Projects"