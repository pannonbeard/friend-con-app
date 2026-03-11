class PasswordlessMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.passwordless_mailer.send.subject
  #
  def send_link(one_time_login)
    @one_time_login = one_time_login

    mail to: @one_time_login.user.email, subject: 'Passwordless Login'
  end
end
