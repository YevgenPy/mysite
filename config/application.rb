require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mysite
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.action_dispatch.rescue_responses["Pundit::NotAuthorizedError"] = :forbidden
    config.i18n.available_locales = %i[en uk]
    config.i18n.default_locale = :en
    config.active_record.encryption.primary_key = Rails.application.credentials.encrypt.primary_key
    config.active_record.encryption.deterministic_key = Rails.application.credentials.encrypt.deterministic_key
    config.active_record.encryption.key_derivation_salt = Rails.application.credentials.encrypt.key_derivation_salt

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
