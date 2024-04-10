# app/controllers/short_urls_controller.rb

class ShortUrlsController < ApplicationController
    def redirect
      short_url = ShortUrl.find_by(short_code: params[:short_code])
      if short_url
        redirect_to short_url.original_url
      else
        render plain: "Shortened URL not found", status: :not_found
      end
    end
  end
  