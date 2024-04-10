Rails.application.routes.draw do
  # Define a route to handle POST requests to "/shorten"
  post '/shorten', to: 'urls#create'

  resources :short_urls, only: [:show], param: :short_code

  # Route to handle redirection from short URL to original URL
  get '/:short_code', to: 'short_urls#redirect'

  # Define the root route
  root to: 'urls#index'  # Assuming you want to use the UrlsController and its index action as the landing page

  # Other routes...
end
