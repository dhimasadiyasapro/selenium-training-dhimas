When(/^I input "([^"]*)" on User Email$/) do |emails|
#  fill_in "loginEmail", :with => emails # Write code here that turns the phrase above into concrete actions
#  find("#loginEmail").set(emails)
  find("#loginEmail").send_keys emails
end

When(/^input "([^"]*)" on User Password$/) do |pass|
  fill_in "loginPassword", :with => pass # Write code here that turns the phrase above into concrete actions
end

When(/^click sign in button$/) do
  find(".btn.btn-primary.btn-block").click # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see dashboard page$/) do
  expect(page).to have_content("DASHBOARD") # Write code here that turns the phrase above into concrete actions
end

# all("select#id").click
# bikin .env di root project
# BS_BROWSER "Firefox"
# ketik source .env
