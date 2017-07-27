When(/^I access Tax$/) do
  click_link "Library"
  click_link "Taxes"
end

When(/^I create tax with (\d+) and (\d+)$/) do |taxname, taxamount|
  find(".new-tax>.pull-right.btn.btn-primary").click
  fill_in "name", :with => "Tax "+taxname
  fill_in "amount", :with => taxamount
  find(".mk-col-right-action-box.bottom>.btn:nth-child(2).btn-primary.pull-right").click
end

Then(/^I should see (\d+) on tax list$/) do |tname1|
  expect(page).to have_content("Tax "+tname1)
end

Then(/^I should see number of tax$/) do
  puts page.all("td", :text => "Tax ").count # Write code here that turns the phrase above into concrete actions
end
