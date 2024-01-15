require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rhouse2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # 1-14-24: from new_framework_defaults_7_0.rb (97-104):
    # ** Please read carefully,
    # this must be configured in config/application.rb **
    # Change the format of the cache entry.
    # Changing this default means that all new cache entries added to the cache
    # will have a different format that is not supported by Rails 6.1
    # applications.
    # Only change this value after your application is fully deployed to
    # Rails 7.0 and you have no plans to rollback.
    # When you're ready to change format, add this to `config/application.rb`
    # (NOT this file):
    config.active_support.cache_format_version = 7.0

    # 1-14-24: from new_framework_defaults_7_0.rb (141-144):
    # ** Please read carefully, this must be configured in config/application.rb
    # (NOT this file) **
    # Disables the deprecated #to_s override in some Ruby core classes
    # See https://guides.rubyonrails.org/configuring.html#
    # config-active-support-disable-to-s-conversion
    # for more information.
    config.active_support.disable_to_s_conversion = true
  end
end
