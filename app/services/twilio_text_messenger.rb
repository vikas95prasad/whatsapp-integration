class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    account_sid = 'ACa62fc943a33064f116fa0896943f0d4c'
    auth_token = 'eff66a1c18dd9a7d9db922341757f733'
    client = Twilio::REST::Client.new(account_sid, auth_token)

    message = client.messages.create(
                                 body: @message.text_message,
                                 from: 'whatsapp:+14155238886',
                                 to: 'whatsapp:+91'.concat(@message.to)
                               )
  end
end
