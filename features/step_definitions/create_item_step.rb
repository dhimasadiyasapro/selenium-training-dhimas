World(ShowMeTheCookies)
require 'csv'
require 'smarter_csv'

When(/^I access Item Library$/) do
  if !File.exist?("login_state.csv")
    visit "/account/#/login"
    fill_in "loginEmail", :with => "dhimas01dev@mailinator.com"
    fill_in "loginPassword", :with => "123456"
    find(".btn.btn-primary.btn-block").click
    expect(page).to have_content("DASHBOARD")
    joss = get_me_the_cookie('remember_token')
    CSV.open("login_state.csv", "w") do |csv|
      csv << ["NAME", "VALUE", "PATH", "DOMAIN", "EXPIRES", "SECURE"]
      csv << [joss[:name], joss[:value], joss[:path], joss[:domain], joss[:expires], joss[:secure]]
    end
    visit "/account/#/library/list"
  else
    visit "/account/#/login"
    jozz = SmarterCSV.process('login_state.csv')
    create_cookie(jozz[0][:name], jozz[0][:value])
    visit "/account/#/library/list"
  end
end

When(/^I create item with (\d+) and (\d+)$/) do |iname, iprice|
  #find(".btn.btn-primary.element-non-mobi").click
  expect(page).to have_content("LIBRARY")
  expect(page).to have_css(".btn.btn-primary.element-non-mobi")
  #find(".btn.btn-primary.element-non-mobi").click
  find("button", :text => "Create Item").click
  fill_in "name", :with => "Item Joss "+iname
  fill_in "item_variant_price_0", :with => iprice
  find(".btn:nth-child(3).btn-primary.pull-right").click
end

Then(/^I should see (\d+) on item list$/) do |iname1|
  expect(page).to have_content("Item Joss "+iname1) # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see number of item$/) do
  puts page.all("td", :text => "Item Joss").count
end
