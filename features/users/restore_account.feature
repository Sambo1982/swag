Feature: Restore account

Background: Create Account and visit edit profile page
Given Signup Success
And I cancel my account

Scenario: Restore account
	Given I visit the "signin" page
	And I login with email "samcarlsruh@gmail.com" and password "foobar"
	And I should be on page with title "Restore Account" 
	When I click the "Restore Account" button
	Then I should be on page with title "My Dashboard"
	And I should see a success message