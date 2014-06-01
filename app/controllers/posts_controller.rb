class PostsController < ApplicationController

	def index
		@posts = Post.all.order('Created_at DESC')
	end

	def show
		@post = Post.find(params[:id])
		@comments = Comment.post_comments(@post)
		@comment = Comment.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post
		else
			redirect_to new_post(@post)
		end
	end

	def new
		@post = Post.new
	end

	private

	def post_params
		params.require(:post).permit(:title, :body)
	end

end