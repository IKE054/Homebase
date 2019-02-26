class Room < ApplicationRecord

	belongs_to :users
	has_many :items, through: :rooms_items
	has_many :rooms_items, dependent: :destroy
end
