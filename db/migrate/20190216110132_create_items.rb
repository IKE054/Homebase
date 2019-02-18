class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.references :user, foreign_key: true
      t.string :title, null: false
      t.string :caption, null: false
      t.string :category, null: false
      t.string :url, null: false
      t.timestamps
    end
  end
end
