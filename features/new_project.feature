Feature: user creates a project
    Scenario: User adds a project
	    Given I have one user with email "example@example.com" and password "example"
            Given I gonp to the new project page
            And I fillnp in "name" with "project 1"
            When I pressnp "Create Project"
            And I shouldnp see "project 1"