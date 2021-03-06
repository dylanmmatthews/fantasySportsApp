class CommentsController < ApplicationController
	before_action :find_commentable

	def new 
		@comment = Comment.new
	end

	def create
		@comment = @commentable.comments.new comment_params

		if @comment.save
			redirect_to :back, notice: 'Thanks for your comment!'
		else 
			redirect_to :back, notice: 'Your comment could now be posted!'
		end
	end

	private 

	def comment_params
		params.require(:comment).permit(:body, :name)
	end

	def find_commentable
		@commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
		@commentable = BlogPost.find_by_id(params[:blog_post_id]) if params[:blog_post_id]
	end
end
