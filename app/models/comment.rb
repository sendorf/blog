class Comment < ActiveRecord::Base

	validates_presence_of :user, :body, :post_id

	belongs_to :post

	scope :post_comments,        lambda{|post| where(:post_id => post.id).order("created_at DESC")}

end
