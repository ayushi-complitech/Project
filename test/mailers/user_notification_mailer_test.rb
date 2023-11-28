require "test_helper"

class UserNotificationMailerTest < ActionMailer::TestCase
  test "create_user" do
    mail = UserNotificationMailer.create_user
    assert_equal "Create user", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "update_user" do
    mail = UserNotificationMailer.update_user
    assert_equal "Update user", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "delete_user" do
    mail = UserNotificationMailer.delete_user
    assert_equal "Delete user", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
