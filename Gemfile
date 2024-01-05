source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.3.0'

gem 'rails', '~> 6.1', '>= 6.1.1'

gem 'pg'#, '>= 0.18', '< 2.0'
gem 'puma'#, '~> 3.11'
gem 'sassc'
gem 'turbolinks'#, '~> 5'
gem 'jbuilder'#, '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# 12-28-19: bump rails up to 6.0.2 (from 5.2.3)
gem 'webpacker'

# Use ActiveStorage variant
gem 'image_processing', '~> 1.12', '>= 1.12.1'
gem 'mini_magick'#, '~> 4.8'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '~> 1.5', '>= 1.5.1', require: false

gem 'devise'
# gem 'foundation-rails' #1-4-24: Integrate ZF CSS & JS via Yarn, instead of gem
gem 'autoprefixer-rails'
gem 'google-cloud-storage', '~> 1.30', require: false
gem 'haml'
gem 'haml-rails'#, '1.0.0'
gem 'jquery-rails'
gem 'sendgrid-ruby'
gem 'recaptcha'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution
  # and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # 1-3-24: Integrate Zurb Foundation (ZF) CSS & JS via Yarn (instead of gem)
  # foreman will run Procfile.dev, which will run
  # `% rails s`, and `% yarn build:css --watch`
  gem 'foreman'
end

group :development do
  # Access an interactive console on exception pages
  # or by calling 'console' anywhere in the code.
  # gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.4', '>= 3.4.1'
  # Spring speeds up development by keeping your application running
  # in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.1'

  gem 'better_errors'
  gem 'binding_of_caller'
  # gem 'meta_request' #1-21-21: https://github.com/dejan/rails_panel/issues/178
  # 3-31-19:
  # https://github.com/ryanb/letter_opener
  gem 'letter_opener'
  # 12-31-23: attempting to make solargraph work
  gem 'solargraph'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.34'
  gem 'selenium-webdriver'
  # 11-14-19: replacing chromedriver-helper:
  # https://github.com/flavorjones/chromedriver-helper/issues/83
  gem 'webdrivers'#, '~> 4.0'
  # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
end
