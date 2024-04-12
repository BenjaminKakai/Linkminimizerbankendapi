Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'https://vercel.com/benjaminkakais-projects/link-minimizer-react-front-end/BeZiXLemnE78T2qYcZ917yp3q5Hk', 'http://localhost:3001'
      resource '*', 
               headers: :any, 
               methods: [:get, :post, :put, :patch, :delete, :options, :head],
               expose: ["Authorization"] # Add this line if you are sending tokens in your Authorization headers and you want to expose them to your front end
    end
  end
  