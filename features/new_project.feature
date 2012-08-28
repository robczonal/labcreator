Feature: user creates a project
    Scenario: User adds a project
	    Given I have one user with email "test@test.com" and password "password"
            Given I gonp to the new project page
            And I fillnp in "name" with "project 1"
            When I pressnp "Create Project"
            Then I shouldnp be on the project show page
            And I shouldnp see "project 1"