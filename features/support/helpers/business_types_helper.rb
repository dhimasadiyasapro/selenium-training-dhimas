module BusinessTypesHelper
  def get_business_types
    get_business_types = Curl.get(host+"/get_business_types") do |curl|
      curl.headers['Accept'] = 'application/json'
      curl.headers['Content-Type'] = 'application/json'
      curl.headers['User-Agent'] = 'capybara'
    end

    JSON.parse get_business_types.body
  end
end
