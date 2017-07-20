Then(/^I should see Moka Youtube channel$/) do
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  page.driver.browser.close
  page.driver.browser.switch_to.window(window.first) # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Help Mokapos page$/) do
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  page.driver.browser.close
  page.driver.browser.switch_to.window(window.first) # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Moka Getting Started Guide$/) do
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  page.driver.browser.close
  page.driver.browser.switch_to.window(window.first) # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Mixpanel Badge$/) do
  visit ("#footerWrapper")
  expect(page).to have_css("img[src*='//cdn.mxpnl.com/site_media/images/partner/badge_light.png']")
  find(".mix-panel-badge").click
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  page.driver.browser.close
  page.driver.browser.switch_to.window(window.first)# Write code here that turns the phrase above into concrete actions
end

Given(/^click footer "([^"]*)"$/) do |arg1|
  visit ("#footerWrapper")
  click_link arg1 # Write code here that turns the phrase above into concrete actions
end
