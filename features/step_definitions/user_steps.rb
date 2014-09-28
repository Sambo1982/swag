Given(/^I am on the signup page$/) do
  visit signup_path
end

When(/^I enter valid user data$/) do
  fill_in "Name",    with: "Sam Carlsruh"
  fill_in "Email", with: "samcarlsruh@gmail.com"
  fill_in "Password", with: "foobar"
  fill_in "Confirm Password", with: "foobar"
  click_button "Sign up"
end

Given(/^Signup Success$/) do
  visit signup_path
  fill_in "Name",    with: "Sam Carlsruh"
  fill_in "Email", with: "samcarlsruh@gmail.com"
  fill_in "Password", with: "foobar"
  fill_in "Confirm Password", with: "foobar"
  click_button "Sign up"
end

Given(/^I successful signin$/) do
  visit signin_path
  fill_in "Email", with: "samcarlsruh@gmail.com"
  fill_in "Password", with: "foobar"
  click_button "Sign in"
end

Given(/^I cancel my account$/) do
  visit edit_user_path(User.last)
  click_link "Cancel Account"
end

Given(/^I log out$/) do
  visit dashboard_path
  click_link "Log Out"
end

When(/^I login with email "(.*?)" and password "(.*?)"$/) do |username, password|
  fill_in "Email", with: "#{username}"
  fill_in "Password", with: "#{password}"
  click_button "Sign in"
end

Then(/^I should see My Dashboad page$/) do
  expect(page).to have_text('My Dashboard')
end

Then(/^I should see a success message$/) do
  expect(page).to have_selector('div.alert.alert-success')
end

Then(/^I should see a signout link$/) do
  expect(page).to have_link('Sign out')
end

When(/^I do not add a name$/) do
  fill_in "Name",    with: ""
end

When(/^I do add a valid email, password, confirm password$/) do
  fill_in "Email", with: "samcarlsruh@gmail.com"
  fill_in "Password", with: "foobar"
  fill_in "Confirm Password", with: "foobar"
end

When(/^I do submit the form$/) do
  click_button "Sign up"
end

Then(/^I should be on the new user page$/) do
  expect(page).to have_text('Sign up')
end

Then(/^I should see a form error$/) do
  expect(page).to have_selector('div.alert.alert-error')
end

When(/^I do not add an email$/) do
  fill_in "Email", with: ""
end

When(/^I do add a valid name, password, confirm password$/) do
  fill_in "Name",    with: "Sam Carlsruh"
  fill_in "Password", with: "foobar"
  fill_in "Confirm Password", with: "foobar"
end

When(/^I do add an invalid email$/) do
  fill_in "Email", with: "sv24vv"
end

When(/^I do add a valid name, email$/) do
  fill_in "Name",    with: "Sam Carlsruh"
  fill_in "Email", with: "samcarlsruh@gmail.com"
end

When(/^I do add an invalid password$/) do
  fill_in "Password", with: "fo"
end

When(/^I do add a valid name, email, and password$/) do
  fill_in "Name",    with: "Sam Carlsruh"
  fill_in "Email", with: "samcarlsruh@gmail.com"
  fill_in "Password", with: "foobar"
end

When(/^I do add an invalid confirm password$/) do
  fill_in "Confirm Password", with: "barfoo"
end
