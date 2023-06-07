require 'aws-sdk-sqs'

class AwsSqsService
  def self.sqs
    @sqs ||= Aws::SQS::Client.new(region: ENV['AWS_REGION'])
  end

  def self.send_message(email, group)
    sqs.send_message({
      queue_url: ENV['AWS_SQS_QUEUE_URL'],
      message_body: {email: email, group: group}.to_json
    })
  end
end
