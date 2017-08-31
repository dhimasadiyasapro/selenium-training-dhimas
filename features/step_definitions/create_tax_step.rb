World(ShowMeTheCookies)
require 'csv'
require 'smarter_csv'

Given(/^I access Tax$/) do
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
    visit "/account/#/library/taxes"
  else
    visit "/account/#/login"
    jozz = SmarterCSV.process('login_state.csv')
    create_cookie(jozz[0][:name], jozz[0][:value])
    visit "/account/#/library/taxes"
  end
end

When(/^I create tax with (\d+) and (\d+)$/) do |taxname, taxamount|
  expect(page).to have_content("LIBRARY")
  expect(page).to have_css(".new-tax>.pull-right.btn.btn-primary")
  find(".new-tax>.pull-right.btn.btn-primary").click
  fill_in "name", :with => "Tax "+taxname
  fill_in "amount", :with => taxamount
  find(".mk-col-right-action-box.bottom>.btn:nth-child(2).btn-primary.pull-right").click
end

Then(/^I should see (\d+) on tax list$/) do |tname1|
  expect(page).to have_content("Tax "+tname1)
end

Then(/^I should see number of tax$/) do
  puts page.all("td", :text => "Tax ").count # Write code here that turns the phrase above into concrete actions
end
