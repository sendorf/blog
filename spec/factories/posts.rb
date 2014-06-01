require 'faker'

FactoryGirl.define do
  factory :post do |f|
    f.title 	{ Faker::Lorem.sentence(rand(2..10)).chomp('.') }
    f.body 		{ Faker::Lorem.paragraphs(3).join("\n\n") }
  end
end