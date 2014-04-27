source 'https://rubygems.org'

ruby "2.1.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

gem 'loadjs'

gem 'rb-readline'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
# Use unicorn as the app server
gem 'unicorn'

gem 'slim-rails'
gem 'haml-rails'

gem 'font-awesome-sass'

# Configures Rails app to be 12 factor compliant for Heroku
gem 'rails_12factor', group: :production

# To extract sensitive configuration
gem 'app_configuration'

# To launch app processes
gem 'foreman'

# Generates spec statistics
gem 'coveralls', require: false
gem "codeclimate-test-reporter", group: :test, require: nil
gem 'simplecov', :require => false, :group => :test

gem 'inherited_resources'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development do
  # gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'coffee-rails-source-maps'
end


group :test, :development, :debugging do
  gem 'pry'
  gem 'pry-nav'
  gem 'pry-stack_explorer'
  gem 'timecop'
  gem 'spork', '~> 1.0rc'
  gem 'rspec-rails', '~> 3.0.0.beta'
  gem 'minitest'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'cucumber-rails', require: false
  gem 'fuubar-cucumber', '~> 0.0.21'
  # gem 'fuubar'
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
  gem "launchy", "~> 2.1.2"
end
