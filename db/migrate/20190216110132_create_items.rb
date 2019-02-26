class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      # t.references :user, foreign_key: true
       t.integer :user_id
      t.string :title
      t.string :caption
      t.string :category, null: false
      t.string :item_image_id
      t.string :url
      t.timestamps
    end
  end
end


