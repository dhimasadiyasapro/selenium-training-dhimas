Then(/^I should see (\d+)K per month image$/) do |arg1|
  expect(page).to have_css(".img-price-250.visible-md.visible-lg[src*='https://www.mokapos.com/assets/home/price250-64b0f01316080ee4c303529c14df0f06.svg']") # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see this image \("([^"]*)", "([^"]*)"\) and information "([^"]*)"$/) do |arg1, arg2, arg3|
  expect(page).to have_css(arg1+"[src*='"+arg2+"']")
  expect(page).to have_content(arg3)# Write code here that turns the phrase above into concrete actions
end
