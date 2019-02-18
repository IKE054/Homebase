class CreateRoomsItems < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms_items do |t|

      t.references :room, foreign_key: true
      t.references :item, foreign_key: true
      t.timestamps
    end
  end
end
