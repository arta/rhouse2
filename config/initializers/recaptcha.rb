Recaptcha.configure do |config|
  config.site_key  = ENV['RECAPTCHA_RHOUSE2_SITE_KEY']
  config.secret_key = ENV['RECAPTCHA_RHOUSE2_SECRET_KEY']
end
