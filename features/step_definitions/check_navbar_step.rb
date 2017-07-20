Given(/^click link "([^"]*)"$/) do |arg1|
  click_link arg1 # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  page.should have_content(arg1)
  page.should have_content(arg2) # Write code here that turns the phrase above into concrete actions
end

Given(/^click Moka logo$/) do
  find(".logo-moka-header").click # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see moka logo$/) do
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/logo-moka-f45408be45f25e06608a8da66ee1e44f.svg']")
end

# expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/logo-moka-f45408be45f25e06608a8da66ee1e44f.svg']")
