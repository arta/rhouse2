require 'test_helper'

class VisitorMailerTest < ActionMailer::TestCase
  test "inquiry" do
    inquiry = Inquiry.new(  name:   'anna',
                            email:  'anna@example.org',
                            body:   'we would like a new roof' )

    mail = VisitorMailer.inquiry(inquiry)

    assert_emails 1 do
      mail.deliver_now
    end

    assert_equal "Inquiry from rhouse2.com", mail.subject
    assert_equal ["info@goodpeople.us"], mail.to
    assert_equal ["anna@example.org"], mail.from
    assert_match /we would like a new roof/, mail.body.encoded
  end

end
