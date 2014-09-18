Feature: Create a Team
As a user
I want to create Teams 
In order to manage portfolios of products and roadmaps

Background: Team Promtp
	Given Signup Success
	Then I should see a "modal" element 
	And I should see the content "Create a Team"

Scenario: Create Team
	Given I enter "ShopKeep Platform" into the "Name" field
	And I enter "Team that builds kick-ass APIs!" into the "Description" field
	When I click the "Create" button
	Then I should be on page with title "My Dashboard"
	And I should see a success message
	And I should see a link for "Team"
