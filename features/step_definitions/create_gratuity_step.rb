World(ShowMeTheCookies)
require 'csv'
require 'smarter_csv'

Given(/^I access Gratuity$/) do
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
    visit "/account/#/library/gratuity"
  else
    visit "/account/#/login"
    jozz = SmarterCSV.process('login_state.csv')
    create_cookie(jozz[0][:name], jozz[0][:value])
    visit "/account/#/library/gratuity"
  end
end

Given(/^I create gratuity with (\d+) and (\d+)$/) do |gratuityname, gratuityamount|
  expect(page).to have_content("LIBRARY")
  find(".new-gratuity>.pull-right.btn.btn-primary").click
  fill_in "name", :with => "Gratuity "+gratuityname
  fill_in "amount", :with => gratuityamount
  find(".mk-col-right-action-box.bottom>.btn:nth-child(2).btn-primary.pull-right").click
end

Then(/^I should see (\d+) on gratuity list$/) do |tname1|
  expect(page).to have_content("Gratuity "+tname1)
end

Then(/^I should see number of gratuity$/) do
  puts page.all("td", :text => "Gratuity ").count # Write code here that turns the phrase above into concrete actions
end
