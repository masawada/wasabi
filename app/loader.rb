# loader
def require_dir(dir)
  Dir.glob("#{__dir__}/#{dir}/*.rb").each { |f| require f }
end

require_relative 'util/helpers.rb'
require_relative '../db/connection.rb'
require_dir 'models'
require_dir 'controllers'
