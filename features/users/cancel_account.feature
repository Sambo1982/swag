Feature: Cancel account

Background: Create Account and visit edit profile page
Given Signup Success
And I visit the "dashboard" page
And I click the "Edit profile" link
And I should be on page with title "Edit Profile"


Scenario: Sucessful cancelation 
Given I click the "Cancel Account" link
When I enter "Cancel" into the "Account Status" field
And I click the "Confirm" button
Then I should be on page with title "Welcome to Swag!"
And I should see a success message