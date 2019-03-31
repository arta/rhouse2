# Preview all emails at localhost:3000/rails/mailers/visitor_mailer
class VisitorMailerPreview < ActionMailer::Preview

  # Preview this email at localhost:3000/rails/mailers/visitor_mailer/inquiry
  def inquiry
    inquiry = Inquiry.new(  name:   'anna',
                            email:  'anna@example.org',
                            body:   'we would like a new roof' )

    VisitorMailer.inquiry(inquiry)
  end

end
