class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    account_sid =''
    auth_token = ''
    client = Twilio::REST::Client.new(account_sid, auth_token)

    message = client.messages.create(
                                 body: @message.text_message,
                                 from: 'whatsapp:+14155238886',
                                 to: 'whatsapp:+91'.concat(@message.to)
                               )
  end
end
