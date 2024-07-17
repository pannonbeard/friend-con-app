# == Schema Information
#
# Table name: notices
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Notice < ApplicationRecord
  after_create :send_to_discord
  
  def header_text
    "#{title}<span class='updated-date'>#{updated_at.strftime('%m/%d/%Y')}</span>".html_safe
  end

  def header
    header_text
  end

  def send_to_discord
    webhook_url = Rails.application.credentials.discord_notice_webhook

    DiscordSend.send_message_to_webhook(webhook_url, discord_message)
  end

  def discord_message
    ["# #{title}", description].join("\n")
  end
end
