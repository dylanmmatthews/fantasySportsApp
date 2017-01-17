class HomeController < ApplicationController
  def index
  	@post = BlogPost.limit(1).order("created_at desc")
  end
  def weekly
    @posts = BlogPost.all
  end
  def prospects
    @posts = BlogPost.all
  end
  def hotornot
    @posts = BlogPost.all
  end
  def dynasty
    @posts = BlogPost.all
  end
  def about
  end
  def contact
  end
end
