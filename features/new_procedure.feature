Feature: user creates a procedure
    Scenario: User adds a procedure
            Given I havenp testx "Water Content" 
	    Given I go to the new procedure page
            When I fill "name" with "bs&w by centrifuge"
	    And I selectnp "Water Content" from "Testx"
            When I press np "Create Procedurex"
            Then I should see np "bs&w by centrifuge"