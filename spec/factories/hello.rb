# coding: utf-8

require "./app/models/hello"

FactoryGirl.define do
  factory :hello, class: Sample::Model::Hello do
    id 1
    body 'world'
  end
end
