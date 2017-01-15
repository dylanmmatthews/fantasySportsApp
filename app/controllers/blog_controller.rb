class BlogController < ApplicationController
	def posts
		@categories = Category.all #Global Header
	end
end
