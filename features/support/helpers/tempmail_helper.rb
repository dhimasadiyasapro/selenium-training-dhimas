require 'tempmailru/api'

module TempmailHelper
  def tempmailru_api
    TempMailRu::Api.new(nil, "http")
  end

  def get_domain_tempmail
    tempmailru_api.domains[rand(3)]
  end
end
