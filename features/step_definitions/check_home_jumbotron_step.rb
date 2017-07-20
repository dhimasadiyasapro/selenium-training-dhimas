Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1) # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see link iTunes and App Store$/) do
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/app-store-button-normal-70281c796a7eeda72873141f0fd20377.svg']")
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/google-play-button-normal-496a97affc51be1481290f76812f82d0.svg']")# Write code here that turns the phrase above into concrete actions
end

Given(/^click link iTunes$/) do
  find("li>.social-app-store").click# Write code here that turns the phrase above into concrete actions # Write code here that turns the phrase above into concrete actions
  # binding pry
end

Then(/^I should see Moka iTunes page$/) do
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  page.driver.browser.close
  page.driver.browser.switch_to.window(window.first) # Write code here that turns the phrase above into concrete actions
  # binding pry
end

Given(/^click link App Store$/) do
  find("li>.social-google-play").click # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Moka App Store page$/) do
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  page.driver.browser.close
  page.driver.browser.switch_to.window(window.first) # Write code here that turns the phrase above into concrete actions # Write code here that turns the phrase above into concrete actions
end

Given(/^click link"([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1).click # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Sign Up page$/) do
  expect(page).to have_content("Confirm Password") # Write code here that turns the phrase above into concrete actions
end

Given(/^click "([^"]*)" button$/) do |arg1|
  find(arg1).click # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Moka Video$/) do
  #Selenium::WebDriver::Wait.new(timeout: 40)
  #expect(page).to have_css(".close", wait: 40)
  sleep(13.to_i)
  find(".close").click # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see component background page with source "([^"]*)" and target "([^"]*)"$/) do |arg1, arg2|
  el = page.find(arg1)
  jo = page.driver.browser.execute_script("return window.getComputedStyle(arguments[0])['background-image']", el.native)
  ny = "url(\"arg2\")"
  jo.eql?(ny) # Write code here that turns the phrase above into concrete actions
end

#  el = page.find(".container-fluid.container-content-index.visible-md.visible-lg.section-1")
#  jo = page.driver.browser.execute_script("return window.getComputedStyle(arguments[0])['background-image']", el.native)
#  ny = "url(\"https://www.mokapos.com/assets/home/jumbotron-homepage2-3ed64fa913ceff68389ed7041bfd0207.jpg\")"
#  jo.eql?(ny)

#  find(".watch-video-link>.btn-play").click
#  Selenium::WebDriver::Wait.new(timeout: seconds).until { yield }
#  find(".close").click

#  expect(page).to have_css(".localnav>h2>img[src*='https://s.mzstatic.com/images/web/itunes_preview/itunespreview_en@2x.png']")
#  page.should have_content("Moka POS")
#  page.should have_content("By Moka Teknologi Indonesia, PT") # Write code here that turns the phrase above into concrete actions

#  window = page.driver.browser.window_handles
#  page.driver.browser.switch_to.window(window.last)
#  page.driver.browser.close
#  page.driver.browser.switch_to.window(window.first) # Write code here that turns the phrase above into concrete actions
