Feature: Edit user profile

Background: Create Account and visit edit profile page
Given Signup Success
And I visit the "dashboard" page
And I click the "Edit profile" link
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