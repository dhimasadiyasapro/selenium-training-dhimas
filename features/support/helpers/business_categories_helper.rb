module BusinessCategoriesHelper
  def get_business_categories(business_type_id)
    get_business_categories = Curl.get(host + "/business_categories?business_type_id=#{business_type_id}") do |curl|
      curl.headers['Accept'] = 'application/json'
      curl.headers['Content-Type'] = 'application/json'
      curl.headers['User-Agent'] = 'capybara'
    end

    JSON.parse get_business_categories.body
  end
end
