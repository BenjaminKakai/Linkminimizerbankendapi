# app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Define the verify_authenticity_token method
  def verify_authenticity_token
    # Implement your CSRF token verification logic here
  end
end
