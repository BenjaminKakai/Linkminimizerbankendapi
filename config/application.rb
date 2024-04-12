require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module UrlShortenerApi
  class Application < Rails::Application
    config.load_defaults 6.1

    # Configuration for the Rack CORS middleware
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'https://vercel.com/benjaminkakais-projects/link-minimizer-react-front-end/BeZiXLemnE78T2qYcZ917yp3q5Hk', 'http://localhost:3001'
        resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
      end
    end
  end
end






