# Preview all emails at http://localhost:3000/rails/mailers/test_mailer
class TestMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/test_mailer/send_test_mail
  def send_test_mail
    TestMailer.send_test_mail
  end

end
