When(/^I try to check business categories$/) do
  @x = get_business_types
  z = 0
  @x.each do
    if !@x[z].nil?
      puts @x[z]["name"]
      z = z+1
    end
  end
end

Then(/^I should get response list of business categories by id$/) do
  y = 0
  a = 0
  @x.each do
    if !@x[a].nil?
      puts @x[a]["name"]+" has following categories: "
      z = get_business_categories(a+1)
      z.each do
        if !z[y].nil?
          puts "- "+z[y]["name"]
          y = y+1
        end
      end
      y = 0
      a = a+1
      puts " "
    end
  end
end
