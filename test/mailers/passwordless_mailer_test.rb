require "test_helper"

class PasswordlessMailerTest < ActionMailer::TestCase
  test "send" do
    mail = PasswordlessMailer.send
    assert_equal "Send", mail.subject
    assert_equal [ "to@example.org" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
