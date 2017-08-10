module EmailHelper
  def get_unverified_email
    "unverified#{get_domain_tempmail}"
  end

  def get_unverified_random_email
    email_name = Faker::Name.name.split(" ").join("_")
    "#{email_name}#{get_domain_tempmail}"
  end

  def verify_email(options)
    email = options[:email]

    verify_email = Curl.get(host + "/validate_email?email=#{email}") do |curl|
      curl.headers['Accept'] = 'application/json'
      curl.headers['Content-Type'] = 'application/json'
      curl.headers['User-Agent'] = 'capybara'
    end

    JSON.parse verify_email.body
  end
end
