class Item < ApplicationRecord

	belongs_to :user
	has_many :rooms, through: :rooms_items, dependent: :destroy
	has_many :rooms_items
	has_many :tags, dependent: :destroy

	accepts_nested_attributes_for :tags, allow_destroy: true
	# mount_uploader :item_image, ImagesUploader
	attachment :item_image

	  # Search method
  def self.search(keyword)
    if keyword
      relation = Item.joins(:tag)
      relation.merge(Tag.where(['tag_title LIKE ?', "%#{keyword}%"])).or(relation.where(['item_name LIKE ?', "%#{keyword}%"]))
    else
      Item.all
    end
  end
end
