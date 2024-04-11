Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'https://urlfrontend-15935609b1f4.herokuapp.com/', 'http://localhost:3001'
      resource '*', 
               headers: :any, 
               methods: [:get, :post, :put, :patch, :delete, :options, :head],
               expose: ["Authorization"] # Add this line if you are sending tokens in your Authorization headers and you want to expose them to your front end
    end
  end
  