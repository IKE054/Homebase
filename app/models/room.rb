class Room < ApplicationRecord

	belongs_to :user
	has_many :items, through: :rooms_items
	has_many :rooms_items, dependent: :destroy
	attachment :room_image
end
