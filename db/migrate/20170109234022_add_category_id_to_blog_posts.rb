class AddCategoryIdToBlogPosts < ActiveRecord::Migration[5.0]
  def change
  	add_reference :blog_posts, :category, index: true, foreign_key: true
  end
end
