class UrlsController < ApplicationController
    skip_before_action :verify_authenticity_token
  
    def create
      original_url = params[:original_url]
      short_url = generate_short_url
      url = Url.new(original_url: original_url, short_url: short_url)
  
      if url.save
        render json: url, status: :created
      else
        render json: url.errors, status: :unprocessable_entity
      end
    end
  
    def show
      url = Url.find_by!(short_url: params[:id])
      url.increment!(:click_count)
      render json: url
    end
  
    private
  
    def generate_short_url
      SecureRandom.uuid[0..5]
    end
  end
  