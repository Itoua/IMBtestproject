class Photo < ApplicationRecord
	attachment :image, content_type: ["image/jpeg", "image/png"] 

	belongs_to :user
end
