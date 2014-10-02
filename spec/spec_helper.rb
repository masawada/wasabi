require 'sinatra/activerecord'
require 'database_cleaner'
require 'factory_girl'
require 'rack/test'
require 'capybara'
require 'rspec'
require 'yaml'

I18n.enforce_available_locales = false
FactoryGirl.definition_file_paths = ["./spec/factories"]
FactoryGirl.find_definitions

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.include Capybara::DSL

  config.before(:all) do
    ActiveRecord::Base.establish_connection YAML.load_file('config/database.yml')['test']
    FactoryGirl.reload
  end
  config.after(:all) do
    ActiveRecord::Base.connection.close
  end
  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.start
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end
end
