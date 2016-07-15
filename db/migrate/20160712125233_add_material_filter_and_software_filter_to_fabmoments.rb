class AddMaterialFilterAndSoftwareFilterToFabmoments < ActiveRecord::Migration
  def change
  	remove_column :fabmoments, :filter
  	add_column :fabmoments, :machine_filter, :string
    add_column :fabmoments, :material_filter, :string
    add_column :fabmoments, :software_filter, :string
  end
end
