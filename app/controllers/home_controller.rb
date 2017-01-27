class HomeController < ApplicationController
  def index
  	@post = BlogPost.limit(1).order("created_at desc")
  end
  def weekly
    @posts = BlogPost.where(:category_id => 2).all
  end
  def prospects
    @posts = BlogPost.where(:category_id => 1).all
  end
  def hotornot
    @posts = BlogPost.where(:category_id => 3).all
  end
  def dynasty
    @posts = BlogPost.where(:category_id => 4).all
  end
  def about
  end
  def contact
  end
end
