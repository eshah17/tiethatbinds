class AddUserIdToRsvp < ActiveRecord::Migration
  def change
    add_column :rsvps, :user_id, :integer
  end
end
