**URL Shortener Backend API**

This repository contains the backend functionality for a URL shortener project implemented using Ruby on Rails. The backend provides endpoints for creating shortened URLs and retrieving URL details.

**Endpoints**

**POST /URLs**

This endpoint is used to create a new shortened URL.

**Request Body**

**original_url:** The original URL to be shortened.

**Response**

**201 Created:** If the URL is successfully created, return the created URL details.

**422 Unprocessable Entity:** If there's an error in the request body, returns validation errors.


**GET /urls/:id**

This endpoint is used to retrieve a shortened URL by its short URL attribute.

**Response**

**200 OK: ** If the URL is found, return the URL details.

**404 Not Found:** If the URL is not found.


**Model**

**Url**

Represents the URL model with the following attributes:

**original_url:** The original URL.
**short_url:** The shortened URL.
**click_count:** The number of times the URL has been clicked.


**Controller**

**UrlsController**

Handles the logic for creating and retrieving shortened URLs.

**Configuration**

**ApplicationController:** The base controller class for the Rails application, configured for API-only 

functionality.

**Application configuration:** The config/api_only = true configuration in config/application.rb indicates 

that the Rails application is API-only.

**Database Migration**

**CreateUrls:** Defines the schema for the URLs table in the database, including columns for original_url, 
short_url, click_count, and timestamps.


**Initialization**

**Rails application initialization:** The Rails.application.initialize! line in config/environment.rb 
initializes the Rails application.


**Testing**

You can test these endpoints using tools like cURL, and Postman, or by making HTTP requests from your
frontend application.
