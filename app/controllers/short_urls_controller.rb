class ShortUrlsController < ApplicationController
  # Method to shorten a URL

  # Method to shorten a URL
def shorten
  long_url = params[:url]

  short_url_record = ShortUrl.new(original_url: long_url, short_code: generate_short_url)

  if short_url_record.save
    render json: { short_url: short_url_record.short_code }, status: :created
  else
    render json: { error: short_url_record.errors.full_messages.join(', ') }, status: :unprocessable_entity
  end
end


  # Method to display a list of short URLs
  def index
    @short_urls = ShortUrl.all
    # render json: @short_urls # This line renders JSON, which is causing the issue
    # Instead, render the HTML view
    render 'urls/index'
  end

  private

  def generate_short_url
    SecureRandom.uuid[0..5]
  end
end
