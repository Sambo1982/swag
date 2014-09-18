Then(/^I should see a "(.*?)" element$/) do |element|
  page.should have_css("#{element}")
end

Then(/^I should see the content "(.*?)"$/) do |content|
  expect(page).to have_text("#{content}")
end

Then(/^I should see a link for "(.*?)"$/) do |link|
  page.should have_selector(:link_or_button, "#{link}")
end