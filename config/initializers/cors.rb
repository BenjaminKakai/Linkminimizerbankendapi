Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'https://urlfrontend-15935609b1f4.herokuapp.com/'
      resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end
  