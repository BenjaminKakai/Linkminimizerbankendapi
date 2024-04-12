# app/controllers/cors_controller.rb

class CorsController < ApplicationController
    # Method to handle CORS preflight requests
    def cors_preflight_check
      # Set appropriate response headers for CORS
      headers['Access-Control-Allow-Origin'] = 'https://vercel.com/benjaminkakais-projects/link-minimizer-react-front-end/BeZiXLemnE78T2qYcZ917yp3q5Hk' # Replace with your Vercel frontend URL
      headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
      headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token, Auth-Token, Email, X-User-Token, X-User-Email'
      headers['Access-Control-Max-Age'] = '1728000'
  
      # Render empty response for OPTIONS requests
      head :ok
    end
  end
  