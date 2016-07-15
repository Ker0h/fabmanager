class AddFilterToFabmoments < ActiveRecord::Migration
  def change
    add_column :fabmoments, :filter, :string
  end
end
