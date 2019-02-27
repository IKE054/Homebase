class Item < ApplicationRecord

	belongs_to :user
	has_many :rooms, through: :rooms_items, dependent: :destroy
	has_many :rooms_items
	has_many :tags, dependent: :destroy

	accepts_nested_attributes_for :tags, reject_if: :all_blank, allow_destroy: true
	# mount_uploader :item_image, ImagesUploader
	attachment :item_image

	  # Search method
  def self.get_movie(ky)
    if ky
      str = 'https://www.youtube.com/embed/' << ky
    else
      str = ''
    end
    return str
  end
end
