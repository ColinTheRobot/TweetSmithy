source 'https://rubygems.org'

ruby '2.2.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

# Use SCSS for stylesheets
gem 'sass-rails'
gem 'bootstrap-sass'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'


######


# Core
gem 'pg'
gem 'unicorn'

# API
gem 'wordnik'
gem 'httparty'

# Auth
gem 'omniauth-twitter', '~> 1.0.1'
gem 'twitter'

group :development, :test do
  gem 'pg'
  gem 'rspec-rails'
  gem 'rspec-collection_matchers'
  gem 'capybara'
  gem 'pry-rails'
  gem 'dotenv-rails'
end

group :production do
  # Use postgress as the database for Active Record
  gem 'rails_12factor'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end






