Feature: User signin

Background: Create Account
Given Signup Success
And I log out

Scenario: Sucessful Signin
Given I visit the "signin" page 
When I login with email "samcarlsruh@gmail.com" and password "foobar"
Then I should be on page with title "My Dashboard" 

Scenario: UnSucessful Signin (bad email)
Given I visit the "signin" page 
When I login with email "sam@shop.com" and password "foobar"
Then I should be on page with title "Sign in" 

Scenario: UnSucessful Signin (bad password)
Given I visit the "signin" page 
When I login with email "samcarlsruh@gmail.com" and password "foo"
Then I should be on page with title "Sign in"

Scenario: Sucessful Signout
Given I visit the "signin" page 
When I login with email "samcarlsruh@gmail.com" and password "foobar"
And I log out
Then I should be on page with title "Welcome to Swag!"
And I should not see the "#menu" element
