class BlogPost < ApplicationRecord
	has_attached_file :hero_image

	validates_attachment_content_type :hero_image, :content_type => /\Aimage\/.*\Z/

	belongs_to :author
	belongs_to :category

	rails_admin do
		edit do
			field :title
			field :author
			field :category
			field :hero_image
			field :summary
			field :content, :ck_editor
		end		
		list do
			field :hero_image
			field :title
			field :author
			field :category
			field :summary
			field :content
		end
	end
end
