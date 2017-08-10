Given(/^I've landing page$/) do
  puts "joss"
end

When(/^I try to check business types$/) do
  puts "gandoss"
end

Then(/^I should get response business types$/) do
  puts get_business_types
end
