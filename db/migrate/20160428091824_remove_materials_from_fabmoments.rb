class RemoveMaterialsFromFabmoments < ActiveRecord::Migration
  def change
add_column :fabmoments, :multiplex_3mm, :boolean
add_column :fabmoments, :multiplex_4mm, :boolean
add_column :fabmoments, :multiplex_6mm, :boolean
add_column :fabmoments, :plexiglas_trans_3mm, :boolean
add_column :fabmoments, :plexiglas_trans_5mm, :boolean
add_column :fabmoments, :plexiglas_trans_10mm, :boolean
add_column :fabmoments, :plexiglas_trans_15mm, :boolean
add_column :fabmoments, :plexiglas_white_3mm, :boolean
add_column :fabmoments, :plexiglas_white_5mm, :boolean
add_column :fabmoments, :plexiglas_blue_3mm, :boolean
add_column :fabmoments, :plexiglas_ylw_3mm, :boolean
add_column :fabmoments, :plexiglas_grn_trans_3mm, :boolean
add_column :fabmoments, :plexiglas_red_trans_3mm, :boolean
add_column :fabmoments, :cardboard, :boolean
add_column :fabmoments, :cardboard_wave, :boolean
add_column :fabmoments, :vinyl, :boolean
add_column :fabmoments, :foil, :boolean
add_column :fabmoments, :pla, :boolean
  end
end
