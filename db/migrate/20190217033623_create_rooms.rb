class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|

      # t.references :user, foreign_key: true
      t.integer :user_id
      t.string :room_name, null: false
      t.string :room_image_id
      t.timestamps
    end
  end
end
