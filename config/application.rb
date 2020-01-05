require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module Depot
  class Application < Rails::Application
    config.load_defaults 5.1

    config.filter_parameters += [ :credit_card_number ]

    config.middleware.use I18n::JS::Middleware
  end
end
