class EventMailer < ApplicationMailer
  def event_added(event)
    @event = event

    mail to: 'pfhendri1@gmail.com', bcc: User.all.map(&:email).join(', '), subject: 'New Event Added'
  end
end
