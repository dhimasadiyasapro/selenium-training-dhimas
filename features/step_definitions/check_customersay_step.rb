Then(/^I should see What Customers Say$/) do
  expect(page).to have_content("What Our Customers Say")
  expect(page).to have_content("Testimonials of our customers across Indonesia.")
  expect(page).to have_content("As Featured On")
  # Featured on logo
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/techinasia-logo-ad348b5df21fc1524601c80e2662284c.png']")
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/cnn-logo-8cd5f4fd4d1fbe0f29ee8f07c97ef523.png']")
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/bloomberg-logo-6f10f396868a4cd5b56a39ab918feba3.png']")
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/dailysocial-d15e50735f791faf08eadf4511fc3933.png']")
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/makemac-logo-7f3e9646b5e1bae835595b2193029295.png']")
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/businessweek-logo-e9988dac61df11d33857b870b55df2f0.png']")
end

Then(/^I should see slider$/) do
  expect(page).to have_content("\"Moka POS simplify operational and inventory and easy to bring along\"")
  expect(page).to have_content("Chief Barbershop • Doni (Supervisor)") # Write code here that turns the phrase above into concrete actions
end

Given(/^click slider right arrow$/) do
  find(".right.carousel-control").click # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see next slider$/) do
  expect(page).to have_content("\"Fantastic application. So convenient and simple\"")
  expect(page).to have_content("Head&Brew • Rachmat (Owner)") # Write code here that turns the phrase above into concrete actions
end

Given(/^click slider left arrow$/) do
  find(".left.carousel-control").click # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see prev slider$/) do
  expect(page).to have_content("\"MOKAPOS is a really helpful apps. It help us to monitor all of our counters across Indonesia in just a few clicks. It is really a great apps!!\"")
  expect(page).to have_content("Hi Fries ( F&B Business)") # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)" and Featuring Logos$/) do |arg1|
  expect(page).to have_content(arg1)
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/techinasia-logo-ad348b5df21fc1524601c80e2662284c.png']")
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/cnn-logo-8cd5f4fd4d1fbe0f29ee8f07c97ef523.png']")
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/bloomberg-logo-6f10f396868a4cd5b56a39ab918feba3.png']")
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/dailysocial-d15e50735f791faf08eadf4511fc3933.png']")
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/makemac-logo-7f3e9646b5e1bae835595b2193029295.png']")
  expect(page).to have_css("img[src*='https://www.mokapos.com/assets/home/businessweek-logo-e9988dac61df11d33857b870b55df2f0.png']") # Write code here that turns the phrase above into concrete actions
end
