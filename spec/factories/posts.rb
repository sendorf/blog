require 'faker'

FactoryGirl.define do
  factory :post do |f|
    f.title { Faker::Lorem.sentence }
    f.body { Faker::Lorem.paragraphs }
  end
end