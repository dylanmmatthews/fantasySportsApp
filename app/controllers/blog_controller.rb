class BlogController < ApplicationController
	def post
  		@post = BlogPost.find(params[:id])
	end
	def posts
		@categories = Category.all #Global Header
	end
end
