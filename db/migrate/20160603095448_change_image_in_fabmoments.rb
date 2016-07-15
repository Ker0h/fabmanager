class ChangeImageInFabmoments < ActiveRecord::Migration
  def change
  	add_column :fabmoments, :image, :string
  end
end
