class VisitorMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.visitor_mailer.inquiry.subject
  #
  def inquiry(inquiry)
    @name = inquiry.name
    @email = inquiry.email
    @body = inquiry.body

    development_staging = Rails.env.development? || ENV['STAGING'].present?
    domain = development_staging ? 'goodpeople.us' : 'rhouse2.com'
    # rh2_email = 'zx9hall@yahoo.com'
    # rh2_email = 'rhouse2constructionllc@gmail.com'
    rh2_email = 'info@goodpeople.us' # "info@#{domain}"
    recipients = inquiry.cc_inquiry? ? [rh2_email, inquiry.email] : rh2_email
    from_domain = development_staging ? 'rhouse2-staging.herokuapp.com' : 'rhouse2.herokuapp.com'

    mail  to:       recipients,
          from:     "inquiry@#{from_domain}",
          subject:  'Inquiry from rhouse2.com'
  end
end
