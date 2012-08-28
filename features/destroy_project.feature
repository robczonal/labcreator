Feature: user destroys a project
    Scenario: User destroys a project
            Given I dp go to the projects page
            And I pressdp "Destroy"
	    When I confirmdp popup
            Then I shoulddp be on the projects page
            And I shoulddp see "Projects"