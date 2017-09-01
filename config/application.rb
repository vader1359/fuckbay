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

module Fukbay
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    
    # Don't generate system test files.
    config.generators.system_tests = nil
    config.serve_static_assets = true
    
    
    # Move from config/application.rb to confib/
    config.action_mailer.asset_host = 'http://localhost:3000'
    config.action_mailer.delivery_method = :smtp
    ActionMailer::Base.smtp_settings = {
      :user_name => ENV["SENDGRID_USERNAME"],
      :password => ENV["SENDGRID_PASSWORD"],
      :api_key => ENV["SENDGRID_API_KEY"],
      :domain => "http://localhost:3000",
      :address => 'smtp.sendgrid.net',
      :port => 587,
      :authentication => :plain,
      :enable_starttls_auto => true
    }
  end

end


