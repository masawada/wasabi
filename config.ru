require 'bundler'
Bundler.require
use Rack::Protection

require_relative 'db/connection.rb'
require_relative 'app/app.rb'
Sample::Application.run! :port => 8080
