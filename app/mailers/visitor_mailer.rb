class VisitorMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.visitor_mailer.inquiry.subject
  #
  def inquiry(inquiry)
    @body = inquiry.body
    @email = inquiry.email

    mail  to: "info@goodpeople.us",
          from: 'info@rhouse2-staging.herokuapp.com',
          subject: 'Inquiry from rhouse2.com'
  end
end
