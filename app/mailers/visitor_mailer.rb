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
    domain = development_staging ? 'goodpeople.us' : 'rhouse2.com'
    rh2_email = "info@#{domain}"
    recipients = inquiry.cc_inquiry? ? [rh2_email, inquiry.email] : rh2_email

    mail  to:       recipients,
          from:     inquiry.email,
          subject:  'Inquiry from rhouse2.com'
  end
end
