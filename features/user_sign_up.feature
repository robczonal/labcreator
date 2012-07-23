Feature: user sign up
    Scenario: User signs up
            Given I go to the home page
            When I pressx "Sign up"
            Then I should be on the users sign_up page
            And I should see "Sign up"
	    Given I write in "Email" with "a@b.com"
	    When I clickx "Sign up"
            Then I should be on the home page
            And I should see "Signed in as a@b.com"