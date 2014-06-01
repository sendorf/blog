# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :comment do |f|
  	f.association :post
    f.user	 	{ Faker::Name.first_name + " " + Faker::Name.last_name }
    f.body 		{ Faker::Lorem.paragraphs(3).join("\r\n\r\n") }
  end
end
