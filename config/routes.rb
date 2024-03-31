Rails.application.routes.draw do
  post '/shorten', to: 'urls#create'  # Route for short URL creation
  resources :short_urls, only: [:show], param: :short_code
end
