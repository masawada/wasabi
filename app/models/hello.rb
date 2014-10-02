# coding: utf-8

module Sample
  module Model
    class Hello < ActiveRecord::Base
      self.table_name = 'hello'

      validates :body, presence: true
    end
  end
end
