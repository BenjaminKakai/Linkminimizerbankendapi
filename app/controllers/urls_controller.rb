class UrlsController < ApplicationController
  before_action :verify_authenticity_token

  # Add the index action here
  def index
    # This will automatically render the `index.html.erb` view in `app/views/urls/`
    # You don't need to add any code here unless you want to pass variables to the view.
  end

  def shorten
    long_url = params[:url] # Change from :long_url to :url
    short_url = generate_short_url

    # Assuming you have a model named ShortUrl
    short_url_record = ShortUrl.new(original_url: long_url, short_code: short_url)

    if short_url_record.save
      render json: { short_url: short_url_record.short_code }, status: :created
    else
      render json: { error: 'Failed to create short URL' }, status: :unprocessable_entity
    end
  end

  def show
    short_url = ShortUrl.find_by(short_code: params[:id])

    if short_url
      redirect_to short_url.original_url
    else
      render json: { error: 'Short URL not found' }, status: :not_found
    end
  end

  private

  def generate_short_url
    SecureRandom.uuid[0..5]
  end
end