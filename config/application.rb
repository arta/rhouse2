require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rhouse2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w(assets tasks sendgrid-min-setup.rb))

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    ###
    # 1-18-24: from new_framework_defaults_7_0.rb (229-241), (7.0 => 7.1):
    # (1-14-24: from new_framework_defaults_7_0.rb (97-104), (6.1 => 7.0):)
    # ** Please read carefully, this must be configured in config/application.rb
    # **
    #
    # Change the format of the cache entry.
    #
    # Changing this default means that all new cache entries added to the cache
    # will have a different format that is not supported by Rails 7.0
    # applications.
    #
    # Only change this value after your application is fully deployed to
    # Rails 7.1 and you have no plans to rollback.
    # When you're ready to change format, add this to `config/application.rb`
    # (NOT [new_framework_defaults_7_1.rb] file):
    config.active_support.cache_format_version = 7.1

    # 1-14-24: from new_framework_defaults_7_0.rb (141-144):
    # ** Please read carefully, this must be configured in config/application.rb
    # (NOT [new_framework_defaults_7_0.rb] file) **
    # Disables the deprecated #to_s override in some Ruby core classes
    # See https://guides.rubyonrails.org/configuring.html#
    # config-active-support-disable-to-s-conversion
    # for more information.
    config.active_support.disable_to_s_conversion = true
  end
end
