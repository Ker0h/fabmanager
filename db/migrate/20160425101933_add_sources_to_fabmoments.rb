class AddSourcesToFabmoments < ActiveRecord::Migration
  def change
    add_column :fabmoments, :sources, :text
  end
end
