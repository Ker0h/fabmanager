class ChangeRightsToRadio < ActiveRecord::Migration
  def change
  	remove_column :fabmoments, :rights 
  	add_column :fabmoments, :rights_attribution, :boolean
  	add_column :fabmoments, :rights_attribution_share, :boolean
  	add_column :fabmoments, :rights_attribution_not_commercial, :boolean
  	add_column :fabmoments, :rights_attribution_not_commercial_share, :boolean
  	add_column :fabmoments, :rights_attribution_no_related_works, :boolean
  	add_column :fabmoments, :rights_attribution_not_commercial_no_related_works, :boolean
  end
end
