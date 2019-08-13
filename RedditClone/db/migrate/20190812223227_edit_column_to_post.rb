class EditColumnToPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :sub_id
    add_column :posts, :sub_id, :integer, null: false
  end
end
