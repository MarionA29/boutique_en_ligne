source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.7', '>= 6.1.7.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0', '>= 5.0.8'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2', '>= 4.2.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.8', '>= 2.8.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

#generate fake date
gem 'faker'

#helps using JavaScript
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'

#Devise is a gem for settting up an authentication system.
gem 'devise', '~> 4.7', '>= 4.7.0'

#Quickly integrate Checkout into your Ruby on Rails-based site to provide your users with a streamlined, mobile-ready payment experience.
gem 'stripe'

#sending email
gem 'sendgrid-ruby', '~> 5.3', '>= 5.3.0'

#dotenv
gem 'dotenv-rails', '>= 2.7.6'
gem "aws-sdk-s3", require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  #gem 'factory_bot_rails'
#amazon
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  #class the data with a print
  gem 'table_print', '~> 1.5', '>= 1.5.6'

  gem 'web-console', '>= 3.7.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.1'
  gem 'letter_opener'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.14.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  gem 'shoulda-matchers', '4.0.1'
  gem 'rails-controller-testing' # If you are using Rails 5.x
  # brings the RSpec testing framework to Ruby on Rails as a drop-in alternative to its default testing framework
  gem 'rspec-rails'
  # Creates a rainbow trail of test results
  gem 'nyancat', '~> 0.2.1'
  gem 'shoulda-callback-matchers', '~> 1.1.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
