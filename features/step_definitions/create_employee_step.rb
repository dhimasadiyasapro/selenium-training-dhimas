Given(/^I have unverified Manager email$/) do
  $manmail = get_manager_email
  puts $manmail
end

When(/^I try to invite with unverified Manager email$/) do
  visit "/"
  click_link "Login"
  find("#loginEmail").send_keys "dhimas1503043525@p33.org"
  fill_in "loginPassword", :with => "123456"
  find(".btn.btn-primary.btn-block").click
  click_link "Employees"
  fill_in "first_name", :with => "Manager"
  fill_in "last_name", :with => "Gila"
  fill_in "email", :with => $manmail
  find(".row:nth-child(2)>.col-lg-6:nth-child(2)>.form-group>.form-control.employee-input.ng-pristine.ng-valid").send_keys "Manager Gila"
  click_button "Assign Outlet"
  click_button "Check All"
  click_button "Assign to Employee"
  select "App and Backoffice", :from => "user_type"
  click_button "Send Invitation"
  expect(page).to have_content($manmail)
end

When(/^I try to verify invited Manager$/) do
  sleep 5
  @joss = get_dhimas_email_inbox($manmail)
  @jiss = extracto_man_email(@joss)
  jass = "#{@jiss[0][0...101]}"
  juss = "#{@jiss[0][105...125]}"
  visit jass+juss
  fill_in "employee_password", :with => "123456"
  fill_in "employee_password_confirmation", :with => "123456"
  click_button "Create my Employee account"
  expect(page).to have_content("Success!")
end

Then(/^I should be able to login with verified Manager email$/) do
  visit "/"
  click_link "Login"
  find("#loginEmail").send_keys $manmail
  fill_in "loginPassword", :with => "123456"
  find(".btn.btn-primary.btn-block").click
  expect(page).should_not have_content("OUTLET")
  sleep 3
end
