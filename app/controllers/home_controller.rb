class HomeController < ApplicationController
  def index
  	@post = BlogPost.limit(1).order("created_at desc")
  end
  def weekly
  end
  def prospects
  end
  def hotornot
  end
  def dynasty
  end
  def about
  end
  def contact
  end
end
