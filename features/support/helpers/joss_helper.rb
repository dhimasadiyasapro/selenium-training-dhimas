module JossHelper
  def get_dhimas_email_x
    domain = tempmailru_api.domains[0]
    currently_time = Time.now.to_i
    "dhimas#{currently_time}#{domain}"
  end
end
