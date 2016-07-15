class AddIsBasedonToFabmoments < ActiveRecord::Migration
  def change
  	add_column :fabmoments, :is_basedon, :string
  end
end
