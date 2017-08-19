require "uri"

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

  #My Function
  def get_dhimas_email
    domain = tempmailru_api.domains[0]
    currently_time = Time.now.to_i
    "dhimas#{currently_time}#{domain}"
  end

  def get_dhimas_email_inbox(mairu)
    tempmailru_api = TempMailRu::Api.new(nil, "http")
    tempmailru_api = TempMailRu::Api.new("#{mairu}")
    tempmailru_api.inbox
  end

  def extracto_email(maail)
    uris = URI.extract(maail.to_s, ['https'])
    uris.select { |uri| uri.include? "verify_email" }[0]
  end

  def extracto_man_email(maail)
    uris = URI.extract(maail.to_s, ['https'])
    uris.select { |uri| uri.include? "confirm_employee_invitation" }
  end

  def get_manager_email
    domain = tempmailru_api.domains[0]
    currently_time = Time.now.to_i
    "manager#{currently_time}#{domain}"
  end
end
