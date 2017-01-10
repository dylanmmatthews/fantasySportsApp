class AddHeroImageToBlogPosts < ActiveRecord::Migration[5.0]
  def self.up
      add_attachment :blog_posts, :hero_image
  end

  def self.down
    remove_attachment :blog_posts, :hero_image
  end
end
