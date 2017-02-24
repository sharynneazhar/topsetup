source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Heroku should use this version of ruby
ruby'2.3.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'

# Use sqlite3 as the database for Active Record
# gem 'sqlite3'

# Use postgres as the database for Active Record
gem 'pg'

# Use Puma as the app server
gem 'puma', '~> 3.0'

# Figaro for environment variables
gem 'figaro'

# Use devise for user authentication
gem 'devise'

# Use rails-erd to easily generate a ERD diagrams
gem 'rails-erd'

# Carrierwave for image uploading
gem 'carrierwave'

# Drag and drop functionality
gem 'dropzonejs-rails'

# Use MiniMagick for image processing
gem 'mini_magick'

# Use Fog to facilitate upload to S3
gem 'fog'

# Multi step form
gem 'wicked'

# Figaro to securely configure application
# gem 'figaro'

# add twitter bootstrap
gem 'bootstrap-sass'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.2'

# Google Material icons
#gem 'material_icons'

# Font awesome
gem 'font-awesome-rails'

# Asset compilation
gem 'rails_12factor', group: :production

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  # Gem for outputting better and more useful errors
  gem "better_errors"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
