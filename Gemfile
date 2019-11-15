source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 5.2.3'
gem 'pg'#, '>= 0.18', '< 2.0'
gem 'puma'#, '~> 3.11'
# 11-14-19: sass-rails 6.0.0 doesn't play nice with foundtion (<= remove F)
gem 'sass-rails', '~> 5.0' 
gem 'uglifier'#, '>= 1.3.0'
gem 'coffee-rails'#, '~> 4.2'
gem 'turbolinks'#, '~> 5'
gem 'jbuilder'#, '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
gem 'mini_magick'#, '~> 4.8'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'devise'
gem 'foundation-rails'
gem 'autoprefixer-rails'
gem "google-cloud-storage", "~> 1.8", require: false
gem 'haml'
gem 'haml-rails', '1.0.0'
gem 'jquery-rails'
gem 'sendgrid-ruby'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution
  # and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages
  # or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running
  # in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  # 3-31-19:
  # https://github.com/ryanb/letter_opener
  gem 'letter_opener'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # 11-14-19: replacing chromedriver-helper:
  # https://github.com/flavorjones/chromedriver-helper/issues/83
  gem 'webdrivers', '~> 4.0'
  # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
end
