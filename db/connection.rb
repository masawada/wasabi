require 'active_record'
require 'yaml'

root_path = File.expand_path("#{File.dirname(__FILE__)}/../")
config = YAML.load_file("#{root_path}/config/database.yml")
db = config[ENV['RACK_ENV'] || 'development']
ActiveRecord::Base.establish_connection(db)
