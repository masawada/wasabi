# coding: utf-8

module Sample
  module Controller
    module Hello
      def self.registered(app)
        index = lambda do
          "hello, world"
        end

        app.get '/', &index
      end
    end
  end
end
