Feature: Landing Page

Scenario: Guest Landing Page
Given I visit the "home" page 
Then I should be on page with title "Welcome to Swag!"
And I should see a link to "Login"
And I should see a link to "Sign up"


Scenario: Logged in Landing Page
Given Signup Success
When I visit the "dashboard" page
Then I should be on page with title "My Dashboard"

