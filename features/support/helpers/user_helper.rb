module UserHelper
  def registering_user(options)
    params = options[:params]
    
    create_user = Curl.post(host + "/create_user", params.to_json) do |curl|
      curl.headers['Accept'] = 'application/json'
      curl.headers['Content-Type'] = 'application/json'
      curl.headers['User-Agent'] = 'capybara'
    end

    JSON.parse create_user.body
  end
end
