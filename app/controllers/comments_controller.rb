class CommentsController < ApplicationController

	def create
		@comment = Comment.new(comment_params)
		@post = Post.find(post_id_params.first.last)
		@comment.save
		redirect_to @post
	end

	private

	def comment_params
		params.require(:comment).permit(:user, :body, :post_id)
	end

	def post_id_params
		params.require(:comment).permit(:post_id)
	end

end