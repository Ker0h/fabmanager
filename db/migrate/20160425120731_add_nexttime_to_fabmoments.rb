class AddNexttimeToFabmoments < ActiveRecord::Migration
  def change
    add_column :fabmoments, :nexttime, :text
  end
end
