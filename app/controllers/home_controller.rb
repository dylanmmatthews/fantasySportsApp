class HomeController < ApplicationController
  def index
  	@author = Author.limit(1).order("created_at desc")
  end
end
