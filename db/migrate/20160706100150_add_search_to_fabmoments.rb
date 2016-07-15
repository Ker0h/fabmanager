class AddSearchToFabmoments < ActiveRecord::Migration
  def change
    add_column :fabmoments, :search, :string
  end
end
