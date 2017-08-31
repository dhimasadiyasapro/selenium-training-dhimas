When(/^I search Item (\d+)$/) do |itemz|
  expect(page).to have_css("tr.ng-scope:nth-child(1)")
  fill_in "Search", :with => "Item Joss "+itemz
  find("tr.ng-scope:nth-child(1)").click
end

Then(/^I can delete item (\d+)$/) do |names|
  find("tr.ng-scope:nth-child(1)").click
  expect(page).to have_content("INVENTORY")
  expect(page).to have_css(".btn.btn-delete.btn-danger.btn-sm")
  find(".btn.btn-delete.btn-danger.btn-sm").click
  find(".bootstrap-dialog-footer-buttons>.btn.btn-danger").click
  if names == "5"
    File.delete('login_state.csv')
  end
end
