class AddMachinesToFabmoments < ActiveRecord::Migration
  def change
  	add_column :fabmoments, :machines_ultimaker_original, :boolean
  	add_column :fabmoments, :machines_ultimaker_original_plus, :boolean
  	add_column :fabmoments, :machines_ultimaker_two, :boolean
  	add_column :fabmoments, :machines_ultimaker_two_plus, :boolean
  	add_column :fabmoments, :machines_lasercutter, :boolean
  	add_column :fabmoments, :machines_vinylcutter, :boolean
  	add_column :fabmoments, :machines_scanner, :boolean
  end
end
