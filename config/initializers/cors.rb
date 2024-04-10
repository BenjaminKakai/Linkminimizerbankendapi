Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'https://quiet-caverns-95907-14695f2a4a5c.herokuapp.com'
      resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end
  