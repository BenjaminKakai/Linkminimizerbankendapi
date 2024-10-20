**URL Shortener - Backend**

This project is a Ruby on Rails API backend for URL shortening service with analytics capabilities.

**Features**

URL shortening with secure random codes
Click tracking and analytics
Cross-Origin Resource Sharing (CORS) enabled
RESTful API endpoints

**Tech Stack**

Ruby 3.1.2
Ruby on Rails 6.1.7
PostgreSQL database
Rack CORS for handling Cross-Origin requests

**Prerequisites**

Before you begin, ensure you have the following installed:

Ruby 3.1.2
Rails 6.1.7
PostgreSQL

**Installation**

1. Clone the repository
2. Install dependencies:
   bundle install
3. Set up the database:
   rails db:create
   rails db:migrate
4. Start the Rails server:
   rails s

The server will run on http://localhost:3000

**API Endpoints**

**Create Shortened URL**

POST /shorten


Request body:

{
  "url": "https://example.com"
}


Response:

{
  "short_url": "abc123"
}



**Redirect to Original URL**

GET /:short_code


**Get URL Analytics**

GET /analytics/:short_code


Response:

{
  "clicks": 10,
  "uniqueVisitors": 5
}





**Models**

**ShortUrl**

  original_url: string (original URL)
  short_code: string (generated short code)
  Validates presence and uniqueness of original URL
  Automatically generates short code before creation

**Configuration**

**CORS Configuration**

CORS is configured to accept requests from:

  https://link-minimizer-react-front-end.vercel.app
  http://localhost:3001

Edit config/initializers/cors.rb to modify allowed origins.

**Environment Variables**

Required environment variables:

RAILS_MASTER_KEY
DATABASE_URL
PORT (optional, defaults to 3000)

**Development**

The application includes:

  Automatic code reloading in development
  Debug capabilities with byebug
  Database query logging
  Spring for faster development boot

**Production Deployment**

1. Set environment variables
2. Precompile assets (if any):
   rails assets:precompile

3. Run database migrations:
   rails db:migrate RAILS_ENV=production
4. Start the server:
   rails s -e production






































