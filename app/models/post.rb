class Post < ActiveRecord::Base
	attr_accessor :title, :body

	validates_presence_of :title, :body

	has_many :comments 
end
