class VisitorMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.visitor_mailer.inquiry.subject
  #
  def inquiry(inquiry)
    @name = inquiry.name
    @body = inquiry.body

    development_staging = Rails.env.development? || ENV['STAGING'].present?
    mail_to = development_staging ? 'goodpeople.us' : 'rhouse2.com'
    mail  to: "info@#{mail_to}",
          from: inquiry.email,
          subject: 'Inquiry from rhouse2.com'
  end
end
