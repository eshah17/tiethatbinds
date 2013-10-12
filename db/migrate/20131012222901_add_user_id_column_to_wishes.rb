class AddUserIdColumnToWishes < ActiveRecord::Migration
  def change
    add_column :wishes , :user_id ,:integer
    add_index :wishes, :user_id
    remove_column :wishes, :name
  end
end
