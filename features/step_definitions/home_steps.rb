When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the index page$/) do
  expect(page).to have_content("BLOG IN")
end
