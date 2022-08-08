require "test_helper"

class BookingMailerTest < ActionMailer::TestCase
  test "book_mailer" do
    mail = BookingMailer.book_mailer
    assert_equal "Book mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
