require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module UrlShortenerApi
  class Application < Rails::Application
    config.load_defaults 6.1

    # Configuration for the Rack CORS middleware
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'https://urlfrontend-15935609b1f4.herokuapp.com/', 'http://localhost:3001'
        resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
      end
    end
  end
end






