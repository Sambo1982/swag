Then(/^I should see a "(.*?)" element$/) do |element|
  page.should have_css("#{element}")
end

Then(/^I should see the content "(.*?)"$/) do |content|
  expect(page).to have_text("#{content}")
end

Then(/^I should see a link for "(.*?)"$/) do |link|
  page.should have_selector(:link_or_button, "#{link}")
end

Given(/^I create a team with name "(.*?)" and description "(.*?)"$/) do |name, description|
   visit new_team_path(User.last)
   fill_in "Team Name", with: "#{name}"
   click_button "Create team"
end

Given(/^I vistit my team page$/) do
	user = User.last
  	visit team_path(user.teams.last)
end