Given(/^I visit "([^"]*)" component$/) do |comps|
  case comps
  when "All in Pricing"
    page.find(".container-fluid.section-34").hover
  when "Bring Your Business"
    page.find(".section-2").hover
  when "What Customer Say"
    page.find(".testimonial-box").hover
  when "Getting Started"
    page.find(".section-5").hover
  when "Get 30-day Free Trial"
    page.find(".box-get-free:nth-child(3)").hover
  when "Footer"
    page.find("#footerWrapper").hover
  end
end

Then(/^I should see All in Pricing contents$/) do
  # Check image 250 per month
  expect(page).to have_css(".img-price-250.visible-md.visible-lg[src*='https://www.mokapos.com/assets/home/price250-64b0f01316080ee4c303529c14df0f06.svg']")
  # Check content No Contract
  expect(page).to have_css(".col-md-4:nth-child(1)>.img-details-pricing>img[src*='https://www.mokapos.com/assets/home/no-contract-b9ada0ea6e75a8839e7c9c2ef2ac084c.png']")
  expect(page).to have_content("No Contract")
  # Check content Unlimited Products
  expect(page).to have_css(".col-md-4:nth-child(2)>.img-details-pricing>img[src*='https://www.mokapos.com/assets/home/unlimited-product-b7448bec1b4ec225ceb5342f87dd69ce.png']")
  expect(page).to have_content("Unlimited Products")
  # Check content Free Support
  expect(page).to have_css(".col-md-4:nth-child(3)>.img-details-pricing>img[src*='https://www.mokapos.com/assets/home/free-support-0eb863947e8c4eef09b79697ce5cd775.png']")
  expect(page).to have_content("Free Support")
  # Check component background image
end

And(/^I should see component "([^"]*)" background page$/) do |bgr_pg|
  case bgr_pg
  when "All in Pricing"
    el = page.find(".container-fluid.section-34")
    jo = page.driver.browser.execute_script("return window.getComputedStyle(arguments[0])['background-image']", el.native)
    ny = "url(\"https://www.mokapos.com/assets/home/Home-Testi-Background-ba61632a7a572afd4220c945bc0cf807.jpg\")"
    jo.eql?(ny)
  end # Write code here that turns the phrase above into concrete actions
end


# .col-md-4:nth-child(1)>.img-details-pricing>img
# https://www.mokapos.com/assets/home/no-contract-b9ada0ea6e75a8839e7c9c2ef2ac084c.png
# No Contract

# .container-fluid.section-34
# https://www.mokapos.com/assets/home/Home-Testi-Background-ba61632a7a572afd4220c945bc0cf807.jpg
