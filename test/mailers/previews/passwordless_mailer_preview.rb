# Preview all emails at http://localhost:3000/rails/mailers/passwordless_mailer
class PasswordlessMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/passwordless_mailer/send
  def send
    PasswordlessMailer.send
  end
end
