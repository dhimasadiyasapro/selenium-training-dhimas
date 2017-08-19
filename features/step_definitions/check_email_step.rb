Given(/^I've unverified email$/) do
  $email = get_unverified_email
  puts $email
end

When(/^I try to verifying the email$/) do
  @result_verify_email = verify_email(
    {
      email: $email
    }
  )
end

Then(/^I should get response the email is not present$/) do
  puts @result_verify_email
  expect(@result_verify_email["present"]).to eql false
end
