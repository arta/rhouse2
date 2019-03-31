class VisitorMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.visitor_mailer.inquiry.subject
  #
  def inquiry(inquiry)
    @body = inquiry.body

    mail  to: "info@goodpeople.us",
          from: inquiry.email,
          subject: 'Inquiry from rhouse2.com'
  end
end
