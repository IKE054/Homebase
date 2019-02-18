class Item < ApplicationRecord

	belong_to :users
	has_many :rooms, through: :rooms_items, dependent: :destroy
	has_many :rooms_items
	has_many :tags, dependent: :destroy
end
