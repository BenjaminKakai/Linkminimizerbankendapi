# /home/benjamin/url_shortener_api/test/controllers/short_urls_controller_test.rb

require 'test_helper'

class ShortUrlsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get short_urls_url
    assert_response :success
  end

  test "should render HTML view for index" do
    get short_urls_url
    assert_select 'title', 'Short URLs'
    assert_select 'h1', 'Short URLs Index'
    # Add more assertions as needed based on your HTML structure
  end

  test "should create short URL" do
    post shorten_url, params: { url: "https://www.example.com" }
    assert_response :created
    assert JSON.parse(response.body).key?("short_url")
  end

  test "should return error for invalid long URL" do
    post shorten_url, params: { url: "invalid_url" }
    assert_response :unprocessable_entity
    assert JSON.parse(response.body).key?("error")
  end

  test "should redirect to original URL" do
    short_url = ShortUrl.create(original_url: "https://www.example.com", short_code: "abcd")
    get show_url(short_code: "abcd")
    assert_redirected_to "https://www.example.com"
  end
end
