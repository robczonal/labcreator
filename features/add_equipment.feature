Feature: user adds equipment to project
	Scenario: User adds equipment to project
		Given I have created a ae project
		Given I haveae analysis "Crude Oil Analysis"
		Given I haveae test "Water Content"
		Given I haveae procedure "Karl Fischer Co"
		Given I haveae equipcat "Xylene"
		Given I haveae equipment "Xylene1"
		Given I haveae ingredient "100"
		And I go to the project ae analyses page
		And I selectae "Crude Oil Analysis" from "Add Analysis"
		Then I clickaec on "Update Project"
		And I selectaea "Water Content" from "Add Test"
		Then I clickaed on "Update Project"
		When I clickae on "Water Content"
		Then I clickaea on "Karl Fischer Co"
		Then I clickaeb on "Update Equipment"
		Then I shouldae be on the project equipment page