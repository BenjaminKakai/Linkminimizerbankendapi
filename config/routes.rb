Rails.application.routes.draw do
  # Define a route to handle POST requests to "/shorten"
  post '/shorten', to: 'short_urls#shorten'

  resources :short_urls, only: [:index, :show], param: :short_code

  # Route to handle redirection from short URL to original URL
  get '/show/:short_code', to: 'short_urls#show'

  get '/test/:id', to: 'short_urls#test'

  # Define the root route
  root to: 'short_urls#index'  # Assuming you want to use the ShortUrlsController and its index action as the landing page

  # Other routes...
end
