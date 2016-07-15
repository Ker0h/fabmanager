class AddSoftwareToFabmoments < ActiveRecord::Migration
  def change
  	remove_column :fabmoments, :software 
  	add_column :fabmoments, :software_illustrator, :boolean
  	add_column :fabmoments, :software_tinkercad, :boolean
  	add_column :fabmoments, :software_sketchup, :boolean
  	add_column :fabmoments, :software_inkscape, :boolean
  	add_column :fabmoments, :software_blender, :boolean
  end
end
