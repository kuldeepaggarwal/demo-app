require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "post_create" do
    mail = Notifier.post_create
    assert_equal "Post create", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
