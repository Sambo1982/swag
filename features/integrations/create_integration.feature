Feature: Create an Integration
As a user
I want add integration credentials to my team
In sync my account with stories from other products

Background: Navigate to correct location
	Given Signup Success
	And I create a team with name "Team A" and description "Team A Rocks!" 
	When I click the "Team settings" link
	Then I should be on page with title "Team Settings"
	And I should see the "#integrations" element
	And I should see a "a" with the content "Add integration"