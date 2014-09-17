# Go to Page Step
When(/^I visit the "(.*?)" page$/) do |page|
  visit "/#{page}"
end

Then(/^I should be on page with title "(.*?)"$/) do |title|
  expect(page).to have_title("#{title}")
end

Then(/^I should see a link to "(.*?)"$/) do |link|
  page.should have_selector(:link_or_button, "#{link}")
end

Then(/^I should not see the "(.*?)" element$/) do |element|
  page.should have_no_css("#{element}")
end

Then(/^I should see the "(.*?)" element$/) do |element|
  page.should have_css("#{element}")
end

When(/^I click the "(.*?)" link$/) do |link|
  click_link "#{link}"
end

When(/^I enter "(.*?)" into the "(.*?)" field$/) do |value, field|
  fill_in "#{field}", with: "#{value}"
end

When(/^I click the "(.*?)" button$/) do |button|
  click_button "#{button}"
end

