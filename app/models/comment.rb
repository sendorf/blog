class Comment < ActiveRecord::Base

	validates_presence_of :user, :body, :post_id

	belongs_to :post
end
