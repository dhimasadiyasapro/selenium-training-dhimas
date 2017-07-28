When(/^I access Gratuity$/) do
  sleep(2.to_i)
  click_link "Library"
  sleep(2.to_i)
  click_link "Gratuity"
end

When(/^I create gratuity with (\d+) and (\d+)$/) do |gratname, gratamount|
  sleep(2.to_i)
  find(".new-gratuity>.pull-right.btn.btn-primary").click
  fill_in "name", :with => "Gratuity "+gratname
  fill_in "amount", :with => gratamount
  find(".mk-col-right-action-box.bottom>.btn:nth-child(2).btn-primary.pull-right").click
end

Then(/^I should see (\d+) on gratuity list$/) do |gname1|
  expect(page).to have_content("Gratuity "+gname1)
end

Then(/^I should see number of gratuity$/) do
  puts page.all("td", :text => "Gratuity ").count
end
