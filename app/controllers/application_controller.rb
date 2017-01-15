class ApplicationController < ActionController::Base
 	protect_from_forgery with: :exception
 	def default_url_options(options)
 		@categories = Category.all
 	end
end
