source 'https://rubygems.org'

# rake
gem 'rake'

# server
gem 'sinatra'
gem 'sinatra-contrib'
gem 'sinatra-flash'
gem 'thin'

# database
group :development do
  gem 'sqlite3'
end

group :production do
  gem 'mysql2'
end

gem 'sinatra-activerecord', :require => 'sinatra/activerecord'

# crypt
gem 'bcrypt'

# stylesheet generator
gem 'sass'

# better erb
gem 'erubis'

# test
group :development, :test do
  gem 'rspec'
  gem 'guard-rspec'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'factory_girl'
  gem 'database_cleaner'
  gem 'rb-fsevent' if `uname` =~ /Darwin/
  gem 'growl' if `uname` =~ /Darwin/
end
