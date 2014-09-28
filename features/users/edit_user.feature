Feature: Edit user profile

Background: Create Account and visit edit Profile page
Given Signup Success
And I create a team with name "Team A" and description "Team A Rocks!" 
And I vistit my team page
And I click the "Edit Profile" link
And I should be on page with title "Edit Profile"



Scenario: Sucessful Profile Edit 
When I enter "Sam Adams" into the "Name" field
And I enter "sam@shopkeep.com" into the "Email" field
And I enter "foobar" into the "Password" field
And I enter "foobar" into the "Confirm Password" field
And I click the "Update" button
Then I should be on page with title "My Dashboard"
And I should see a success message

Scenario: UnSucessful Profile Edit 
When I enter "" into the "Email" field
And I click the "Update" button
Then I should be on page with title "Edit Profile"
And I should see a form error