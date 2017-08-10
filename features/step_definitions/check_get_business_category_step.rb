When(/^I try to check business categories$/) do
  @x = get_business_types
  z = 1
  @x.each do
    if !@x[z].nil?
      puts @x[z]["name"]
      z = z+1
    end
  end
end

Then(/^I should get response list of business categories by id$/) do
  y = 1
  a = 1
  @x.each do
    if !@x[a].nil?
      puts @x[a]["name"]+" has following categories: "
      get_business_categories(a).each do
        if !get_business_categories(a)[y].nil?
          puts "- "+get_business_categories(a)[y]["name"]
          y = y+1
        end
      end
      y = 1
      a = a+1
      puts " "
    end
  end
end
