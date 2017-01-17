class BlogController < ApplicationController
	def post
  		@post = BlogPost.find(params[:id])
	end
	def posts
		@posts = BlogPost.all.order('created_at desc')
	end
end
