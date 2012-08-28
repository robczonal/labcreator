Feature: user adds equipment to project
	Scenario: User adds equipment to project
		Given I go to the project ae analyses page
		And I haveae analysis "Crude Oil Analysis"
		And I haveae test "Water Content of Oil"
		When I clickae on "Water Content of Oil"
		Then I clickaea on "Karl Fischer co"
		Then I clickaeb on "Update Equipment"
		Then I shouldae be on the project equipment page