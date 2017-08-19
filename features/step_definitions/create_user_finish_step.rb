Given(/^I have unverified dhimas email$/) do
  $dhimail = get_dhimas_email
  puts $dhimail
  @result_verify_email = verify_email(
    {
      email: $dhimail
    }
  )
  puts @result_verify_email
  expect(@result_verify_email["present"]).to eql false #tips: bikin pengecekan sampai bener2 dapet email yang belum pernah dipake
end

When(/^I try to register the email$/) do
  @params = {
    "business" => {
      "business_type_id" => "4",
      "business_category_id" => "24",
      "name" => "King Kazuya Massage",
      "address" => "Jalan Meruya Ilir",
      "city" => "Jakarta Barat",
      "province" => "DKI Jakarta",
      "postal_code" => "12841"
    },
    "user" => {
      "email" => $dhimail,
      "password" => "123456",
      "password_confirmation" => "123456",
      "first_name" => "King",
      "last_name" => "Kazuya",
      "phone" => "81293827121"
    },
    "agent" => "browser",
    "registration" => {
      "business" => {
        "business_type_id" => "4",
        "business_category_id" => "24",
        "name" => "King Kazuya Massage",
        "address" => "Jalan Meruya Ilir",
        "city" => "Jakarta Barat",
        "province" => "DKI Jakarta",
        "postal_code" => "12841"
      },
      "user" => {
        "email" => $dhimail,
        "password" => "123456",
        "password_confirmation" => "123456",
        "first_name" => "King",
        "last_name" => "Kazuya",
        "phone" => "81293827121"
      },
      "agent" => "browser"
    }
  }
  #puts @params.to_json
  if @result_verify_email["present"] == false
    http = Curl.post("https://dev.mokapos.com/create_user", @params.to_json) do |http|
      http.headers['Accept'] = 'application/json'
      http.headers['Content-Type'] = 'application/json'
      http.headers['User-Agent'] = 'capybara'
    end

    #puts http.body
    #puts " "
    sleep 10
  end
end

When(/^I try to verify regitration email$/) do
  @joss = get_dhimas_email_inbox($dhimail)
  @jiss = extracto_email(@joss)
  #puts @jiss
  visit @jiss
  sleep 10
end

Then(/^I should be able to login with dhimas email$/) do
  #visit "/"
  #click_link "Login"
  find(".dropdown>.dropdown-toggle").click
  find(".dropdown-menu.mk-short-profile-dropdown>li:nth-child(5)>a").click
  find("#loginEmail").send_keys $dhimail
  fill_in "loginPassword", :with => "123456"
  find(".btn.btn-primary.btn-block").click
  expect(page).to have_content("DASHBOARD")
end
