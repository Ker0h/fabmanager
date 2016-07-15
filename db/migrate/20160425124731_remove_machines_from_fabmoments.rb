class RemoveMachinesFromFabmoments < ActiveRecord::Migration
  def change
  	remove_column :fabmoments, :machines
  end
end
