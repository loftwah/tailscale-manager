require_relative '../services/tailscale_api_service'
require_relative '../services/aws_sqs_service'

class User
  def self.add(email, group)
    TailscaleApiService.add_user(email, group)
    AwsSqsService.send_message(email, group)
  end
end
