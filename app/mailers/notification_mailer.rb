class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.notice_posted.subject
  #
  def notice_posted(notice)
    @notice = notice

    mail to: 'pfhendri1@gmail.com', bcc: User.all.map(&:email).join(", "), subject: "Notice Posted: #{@notice.title}"
  end
end
