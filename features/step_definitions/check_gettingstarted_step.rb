Then(/^I should see Getting Started content$/) do
  expect(page).to have_content("Getting Started is As Simple As Ever")
  expect(page).to have_content("Just follow these steps and you are ready to open for business!")
  # Download Moka Panel
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/download-icon-10fd7c67419bf9f7860011baca2406a6.svg']")
  expect(page).to have_content("Download Moka POS App for FREE")
  expect(page).to have_content("Download the App through Apple App Store or Google Play Store and Install it.")
  # Sign Up Panel
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/sign-up-icon-bc88a80ebc43b80f1ee13d41a2b1b413.svg']")
  expect(page).to have_content("Sign Up (Through Web or Device)")
  expect(page).to have_content("Sign Up directly from the Moka POS App or Moka website. It only takes a minute!")
  # Ready for Business Panel
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/ready-icons-8d35ad61f50d644556d2ce773efeafbc.svg']")
  expect(page).to have_content("Ready for Business!")
  expect(page).to have_content("Use the app as your cash register, and check the website for your sales summary everywhere.")
  # Big Pictures
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/checkout-5798f8f1fe6f2e209b801c43a25348e9.jpg']")
  # Standout at Checkout
  expect(page).to have_content("Standout at Checkout")
  expect(page).to have_content("Feel like traditional cash registers are so 1960s? That's because they are. Upgrade now and sell in style!")
end

Then(/^I should see Big picture$/) do
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/checkout-5798f8f1fe6f2e209b801c43a25348e9.jpg']") # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Download Moka Panel$/) do
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/download-icon-10fd7c67419bf9f7860011baca2406a6.svg']")
  expect(page).to have_content("Download Moka POS App for FREE")
  expect(page).to have_content("Download the App through Apple App Store or Google Play Store and Install it.") # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Sign Up Panel$/) do
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/sign-up-icon-bc88a80ebc43b80f1ee13d41a2b1b413.svg']")
  expect(page).to have_content("Sign Up (Through Web or Device)")
  expect(page).to have_content("Sign Up directly from the Moka POS App or Moka website. It only takes a minute!") # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Ready for Business Panel$/) do
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/ready-icons-8d35ad61f50d644556d2ce773efeafbc.svg']")
  expect(page).to have_content("Ready for Business!")
  expect(page).to have_content("Use the app as your cash register, and check the website for your sales summary everywhere.") # Write code here that turns the phrase above into concrete actions
end
