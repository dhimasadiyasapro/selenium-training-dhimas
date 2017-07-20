Given(/^I go to home page$/) do
  visit "/" # Write code here that turns the phrase above into concrete actions
  # binding pry
end

Then(/^I should see title "([^"]*)"$/) do |titel|
  expect(page).to have_title(titel) # Write code here that turns the phrase above into concrete actions
end
