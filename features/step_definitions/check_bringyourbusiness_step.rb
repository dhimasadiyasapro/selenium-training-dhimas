Then(/^I should see F&B image & information$/) do
  page.should have_content("F&B")
  page.should have_content("Suitable for quick and full service restaurant, foodtruck, bakery, etc.")
  expect(page).to have_css(".col-md-4:nth-child(1)>.circle-img>.visible-md.visible-lg.fb-circle[src*='https://www.mokapos.com/assets/home/fnb-939cf3589a07aa16073b634a5ba76767.png']")# Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Service Business image and information$/) do
  page.should have_content("Service Business")
  page.should have_content("Suitable for barbershop, beauty salon, massage and spa, etc.")
  expect(page).to have_css(".col-md-4:nth-child(2)>.circle-img>.visible-md.visible-lg.fb-circle[src*='https://www.mokapos.com/assets/home/barbershop-9ed215ab82f0c5cc21a1e373b4de52a7.png']")# Write code here that turns the phrase above into concrete actions # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Retail image and information$/) do
  page.should have_content("Retail")
  page.should have_content("Suitable for apparel store, bookstore, bazaar, etc.")
  expect(page).to have_css(".col-md-4:nth-child(3)>.circle-img>.visible-md.visible-lg.fb-circle[src*='https://www.mokapos.com/assets/home/retail-10f61ab249124ff31e9008a70877586c.png']")# Write code here that turns the phrase above into concrete actions # Write code here that turns the phrase above into concrete actions
end
