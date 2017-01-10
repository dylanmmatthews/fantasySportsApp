class AddAuthorIdToBlogPosts < ActiveRecord::Migration[5.0]
  def change
	add_reference :blog_posts, :author, index: true, foreign_key: true
  end
end
