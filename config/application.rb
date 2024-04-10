require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module UrlShortenerApi
  class Application < Rails::Application
    config.load_defaults 6.1

    # Configuration for the Rack CORS middleware
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        # Replace 'http://localhost:3001' with your Heroku app URL
        origins 'https://quiet-caverns-95907-14695f2a4a5c.herokuapp.com'
        resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
      end
    end
  end
end
