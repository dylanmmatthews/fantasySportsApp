class HomeController < ApplicationController
  def index
  	@post = BlogPost.limit(1).order("created_at desc")
  	@categories = Category.all

  end
end
