class AddNameWish < ActiveRecord::Migration
  def up
    add_column :wishes, :name, :string
    add_column :wishes, :wish, :string
    
  end

  def down
    remove_column :wishes, :name, :string
    remove_column :wishes, :wish, :string
    
  end
end
