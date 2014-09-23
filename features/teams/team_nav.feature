Feature: Team nav and edit
As a user
I want to switch between teams 
In order to manage portfolios of products and roadmaps

Background: Team Promtp
	Given Signup Success
	And I create a team with name "Team A" and description "Team A Rocks!" 
	And I create a team with name "Team B" and description "Team B Rocks!" 

Scenario: Nav options
	Given I visit the "dashboard" page
	Then I should see a link to "Team A"
	And I should see a link to "Team B" 

Scenario: Edit Team
	Given I visit the "dashboard" page
	When I click the "Edit team settings" link
	Then I should see a ".modal" element 
	And I should see the content "Edit Team A"