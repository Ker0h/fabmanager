class AddUserIdToFabmoments < ActiveRecord::Migration
  def change
    add_column :fabmoments, :user_id, :integer
  end
end
