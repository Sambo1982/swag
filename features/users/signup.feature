Feature: User Signup
As a User
I want to signup to the service

Scenario: Signup Success
	Given I am on the signup page
	When I enter valid user data
	Then I should see My Dashboad page
	And I should see a success message
	And I should see a signout link

Scenario: Signup Failure (no name)
	Given I am on the signup page
	When I do not add a name
	And I do add a valid email, password, confirm password
	And I do submit the form 
	Then I should be on the new user page
	And I should see a form error

Scenario: Failed user creation (no email)
	Given I am on the signup page
	When I do not add an email
	And I do add a valid name, password, confirm password
	And I do submit the form 
	Then I should be on the new user page
	And I should see a form error

Scenario: Failed user creation (invalid email)
	Given I am on the signup page
	When I do add an invalid email
	And I do add a valid name, password, confirm password
	And I do submit the form 
	Then I should be on the new user page
	And I should see a form error

Scenario: Failed user creation (invalid password)
	Given I am on the signup page
	When I do add a valid name, email
	And I do add an invalid password
	And I do submit the form 
	Then I should be on the new user page
	And I should see a form error

Scenario: Failed user creation (password does not match)
	Given I am on the signup page
	When I do add a valid name, email, and password
	And I do add an invalid confirm password
	And I do submit the form 
	Then I should be on the new user page
	And I should see a form error