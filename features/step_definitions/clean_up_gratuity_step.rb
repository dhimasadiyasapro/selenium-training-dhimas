Then(/^I can delete gratuity (\d+)$/) do |names|
  expect(page).to have_content("LIBRARY")
  find("tr.ng-scope:nth-child(1)").click
  expect(page).to have_content("GRATUITY INFORMATION")
  expect(page).to have_css(".btn.btn-delete.btn-danger.btn-sm")
  find(".btn.btn-delete.btn-danger.btn-sm").click
  find(".bootstrap-dialog-footer-buttons>.btn.btn-danger").click
  if names == "5"
    File.delete('login_state.csv')
  end
end
