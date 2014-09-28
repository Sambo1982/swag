Feature: Cancel account

Background: Create Account and visit edit profile page
	Given Signup Success
	And I create a team with name "Team A" and description "Team A Rocks!" 
	And I vistit my team page
	And I click the "Edit Profile" link
	And I should be on page with title "Edit Profile"


Scenario: Sucessful cancelation 
	When I click the "Cancel Account" link
	Then I should be on page with title "Welcome to Swag!"
	And I should see a success message