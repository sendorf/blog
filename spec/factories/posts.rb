require 'faker'

FactoryGirl.define do
  factory :post do |f|
    f.title 	{ Faker::Lorem.sentence(3).chomp('.') }
    f.body 		{ Faker::Lorem.paragraphs(3).join("\r\n\r\n") }
  end
end