class AddRightsAndMachinesAndMoAndSettingsAndSoftwareAndMaterialsAndWentwellAndWentbadAndChangesAndBasedonAndSourcesToFabmoment < ActiveRecord::Migration
  def change
    add_column :fabmoments, :rights, :text
    add_column :fabmoments, :machines, :text
    add_column :fabmoments, :mo, :text
    add_column :fabmoments, :settings, :text
    add_column :fabmoments, :software, :text
    add_column :fabmoments, :materials, :text
    add_column :fabmoments, :wentwell, :text
    add_column :fabmoments, :wentbad, :text
    add_column :fabmoments, :changes, :text
    add_column :fabmoments, :basedon, :text
  end
end
