class RemoveChangesFromFabmoments < ActiveRecord::Migration
  def change
  	remove_column :fabmoments, :changes
  end
end
