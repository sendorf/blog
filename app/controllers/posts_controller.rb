class PostsController < ApplicationController

	def show
		@posts = Post.all.order('Created_at DESC')
	end

	def create
		@post = Post.new(post_params)
		@post.save
	end

	private

	def post_params
		params.require(:title, :body)
	end

end