require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Dlm
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.time_zone = 'Brisbane'
    config.active_record.default_timezone = :local
    config.active_record.time_zone_aware_attributes = false

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end

  ActionView::Base.field_error_proc = proc do |html_tag, instance|
    html_tag.gsub("form-control", "form-control is-invalid").html_safe
  end
end
