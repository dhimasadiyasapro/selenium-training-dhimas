When(/^I search Item (\d+)$/) do |itemz|
  fill_in "Search", :with => "Item Joss "+itemz # Write code here that turns the phrase above into concrete actions
end

Then(/^I can delete item$/) do
  find("tr.ng-scope:nth-child(1)").click
  find(".btn.btn-delete.btn-danger.btn-sm").click
  find(".bootstrap-dialog-footer-buttons>.btn.btn-danger").click
end
