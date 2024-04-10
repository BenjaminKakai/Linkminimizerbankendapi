Rails.application.routes.draw do
  # Other routes...

  # Define a route to handle POST requests to "/shorten"
  post '/shorten', to: 'urls#create'

  resources :short_urls, only: [:show], param: :short_code

  # Route to handle redirection from short URL to original URL
  get '/:short_code', to: 'short_urls#redirect'
end
