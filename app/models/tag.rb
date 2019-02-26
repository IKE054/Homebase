class Tag < ApplicationRecord
	belongs_to :items
	belongs_to :users
	validates :name, presence: true
end
