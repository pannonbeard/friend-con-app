require 'net/http'

class DiscordSend
  def self.send_message_to_webhook(webhook_url, message)
    uri = URI(webhook_url)
    response = Net::HTTP.post(uri,  {content: message}.to_json, { 'Content-Type': 'application/json' })

    puts response.body
  end
end