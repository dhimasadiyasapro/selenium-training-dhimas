Then(/^I should see Get Free 30-day Trial content$/) do
  expect(page).to have_content("Get Free 30-Day Trial")
  expect(page).to have_content("No contract. No credit card required.")
  expect(page).to have_content("Call Us :")
  expect(page).to have_content("1500970")
end
