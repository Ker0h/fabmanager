class AddFileToFabmoments < ActiveRecord::Migration
  def change
    add_column :fabmoments, :file, :string
  end
end
