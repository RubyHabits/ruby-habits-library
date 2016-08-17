require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RubyHabitsLibrary
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # preload tokens in application.yml to local ENV
    config = YAML.load(File.read(File.expand_path('../application.yml', __FILE__)))
    config.merge! config.fetch(Rails.env, {})
    config.each do |key, value|
      ENV[key] = value.to_s unless value.kind_of? Hash
    end

  end
end
