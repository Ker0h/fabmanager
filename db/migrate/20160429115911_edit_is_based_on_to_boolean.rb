class EditIsBasedOnToBoolean < ActiveRecord::Migration
  def chang
	  change_column :fabmoments, :is_basedon, :boolean
  end
end
