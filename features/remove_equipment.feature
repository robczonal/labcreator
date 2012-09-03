Feature: remove equipment
	Scenario: User removes equipment from basket
		Given I have created a re project
		Given I have created two re equipments
		Given I havere two items in my basket
		And I go to the project re equipment page
		When I pressre "Remove"
		And I confirmre popup
                Then I shouldre be on the project equipment page
		And I shouldre have 1 x items in my basket
		