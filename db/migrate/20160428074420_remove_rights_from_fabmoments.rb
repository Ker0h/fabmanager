class RemoveRightsFromFabmoments < ActiveRecord::Migration
  def change
  	remove_column :fabmoments, :rights_attribution
  	remove_column :fabmoments, :rights_attribution_share
  	remove_column :fabmoments, :rights_attribution_not_commercial
  	remove_column :fabmoments, :rights_attribution_not_commercial_share
  	remove_column :fabmoments, :rights_attribution_no_related_works
  	remove_column :fabmoments, :rights_attribution_not_commercial_no_related_works
  	add_column :fabmoments, :rights, :string
  end
end
