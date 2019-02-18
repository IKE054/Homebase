class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|

      t.references :item, foreign_key: true
      t.string :tag_title, null: false
      t.string :type_id, null: false
      t.timestamps
    end
  end
end
