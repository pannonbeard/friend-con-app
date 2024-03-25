require "test_helper"

class NotificationMailerTest < ActionMailer::TestCase
  test "notice_posted" do
    mail = NotificationMailer.notice_posted
    assert_equal "Notice posted", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
