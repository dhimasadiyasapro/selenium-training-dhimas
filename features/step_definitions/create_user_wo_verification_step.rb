When(/^I try to create user$/) do
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
      "email" => "devilman04@mailinator.com",
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
        "email" => "devilman04@mailinator.com",
        "password" => "123456",
        "password_confirmation" => "123456",
        "first_name" => "King",
        "last_name" => "Kazuya",
        "phone" => "81293827121"
      },
      "agent" => "browser"
    }
  }
  puts @params.to_json
end

Then(/^I should get response list of unverified user creation$/) do
  http = Curl.post("https://dev.mokapos.com/create_user", @params.to_json) do |http|
    http.headers['Accept'] = 'application/json'
    http.headers['Content-Type'] = 'application/json'
    http.headers['User-Agent'] = 'capybara'
  end

  puts http.body
end

Then(/^I should see unverified user alert$/) do
  expect(page).to have_content("You need to verify your account before continue. Please check your email.")
end

#domain = tempmailru_api.domains[0]
#currently_time = Time.now.to_i
#email = "dhimas#{currently_time}#{domain}"
#get inbox trus diparsing isinya trus cari link verify trus divisit

#business_type_id = 1

#"/create_user"
