class Comment < ActiveRecord::Base
	attr_accessor :user, :body, :post

	validates_presence_of :user, :body, :post

	belongs_to :post
end
