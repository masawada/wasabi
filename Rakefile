# loader
def require_dir(dir)
  Dir.glob("#{__dir__}/#{dir}/*.rb").each { |f| require f }
end

# tasks
require 'sinatra/activerecord/rake'
require_relative 'db/connection.rb'
require_dir 'lib/tasks'
