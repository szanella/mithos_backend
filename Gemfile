source 'https://rubygems.org'
ruby '2.3.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer',  platforms: :ruby

gem 'activesupport-json_encoder'

# Use jquery as the JavaScript library
#gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'rspec_api_documentation'
end

# Docs
gem 'raddocs', github: 'smartlogic/raddocs'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'puma', group: [:production, :staging]

# Use Capistrano for deployment
group :development do
  gem 'capistrano',                 require: false
  gem 'capistrano-rvm',             require: false
  gem 'capistrano-rails',           require: false
  gem 'capistrano-bundler',         require: false
  gem 'capistrano3-nginx', '2.0.2', require: false
  gem 'capistrano3-puma',           require: false
  gem 'capistrano3-delayed-job',    require: false
end

gem 'annotate'

gem 'whenever', github: 'micred/whenever'  # Whenever fork because of https://github.com/javan/whenever/issues/554

gem 'figaro'

gem 'paperclip'

gem 'delayed_job_active_record'
gem 'daemons'

# CORS
gem 'rack-cors'

# Authentication and Authorization
gem 'devise', '~> 3.2'
gem 'devise_token_auth'
gem 'cancan'

gem 'activeadmin', '1.0.0pre1'

gem 'airbrake', '~>4.3.8'

# Money formatting
gem 'money', '6.7.1'