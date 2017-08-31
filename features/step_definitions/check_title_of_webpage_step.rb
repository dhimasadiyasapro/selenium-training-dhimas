World(ShowMeTheCookies)

Given(/^I go to home page$/) do
  visit "/" # Write code here that turns the phrase above into concrete actions
  # binding pry
end

Then(/^I should see title "([^"]*)"$/) do |titel|
  expect(page).to have_title(titel) # Write code here that turns the phrase above into concrete actions
end

Given(/^I visit dashboard$/) do
  visit "/account/#/dashboard"
end

When(/^I login$/) do
  find("#loginEmail").send_keys "dhimas23staging@mailinator.com"
  fill_in "loginPassword", :with => "123456"
  binding.pry
  find(".btn.btn-primary.btn-block").click
  @joss = get_me_the_cookie('remember_token')
  puts @joss
end
