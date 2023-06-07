require 'httparty'

class TailscaleApiService
  include HTTParty

  base_uri 'https://api.tailscale.com/v2/'

  def self.add_user(email, group)
    options = {
      body: {
        email: email,
        groups: [group]
      }.to_json,
      headers: { 'Content-Type' => 'application/json', 'Authorization' => "Bearer #{ENV['TAILSCALE_API_KEY']}" }
    }
    post('/user', options)
  end
end
