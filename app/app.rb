require_relative 'loader'

module Sample
  class Application < Sinatra::Base
    helpers Sample::Util::Helpers
    register Sample::Controller::Hello
  end
end
