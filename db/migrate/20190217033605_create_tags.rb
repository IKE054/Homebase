class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|

      t.references :item, foreign_key: true
      t.string :tag_title, null: false
      t.string :type_id, null: false
      t.timestamps
    end
  end
end
