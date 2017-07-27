Given(/^I login to Mokapos$/) do
  fill_in "loginEmail", :with => "dhimas01dev@mailinator.com"
  fill_in "loginPassword", :with => "123456"
  find(".btn.btn-primary.btn-block").click
end

When(/^I access Item Library$/) do
  click_link "Library" # Write code here that turns the phrase above into concrete actions
end

When(/^I create item with (\d+) and (\d+)$/) do |iname, iprice|
  find(".btn.btn-primary.element-non-mobi").click
  fill_in "name", :with => "Item Joss "+iname
  fill_in "item_variant_price_0", :with => iprice
  find(".btn:nth-child(3).btn-primary.pull-right").click
end

Then(/^I should see (\d+) on item list$/) do |iname1|
  expect(page).to have_content("Item Joss "+iname1) # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see number of item$/) do
  puts page.all("td", :text => "Item Joss").count
end
