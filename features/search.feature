@gsearch
Feature: Google search Example
	Scenario: Search for RedHat
		Given I am on the Google homepage
		When I will type the text "Red Hat"
		When I will click on the search button
		Then I should see "Red Hat" on the Page
