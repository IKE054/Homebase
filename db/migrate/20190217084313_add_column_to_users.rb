class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change

      add_column :users, :name, :string, null: false
  	  add_column :users, :introduction, :string
  	  add_column :users, :profile_image_id, :string
  	  add_column :users, :header_image_id, :string
  end
end
