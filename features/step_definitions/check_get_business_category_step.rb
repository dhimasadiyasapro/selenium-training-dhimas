When(/^I try to check business categories$/) do
  x = get_business_types
  puts x[0]["name"]
end

Then(/^I should get response list of business categories by id$/) do
  y = 1
  get_business_categories(1).each do
    if !get_business_categories(1)[y].nil?
      puts get_business_categories(1)[y]["name"]
      y = y+1
    end
  end
end
