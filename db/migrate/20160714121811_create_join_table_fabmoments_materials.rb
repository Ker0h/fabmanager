class CreateJoinTableFabmomentsMaterials < ActiveRecord::Migration
  def change
    create_join_table :fabmoments, :materials do |t|
      t.index [:fabmoment_id, :material_id]
      t.index [:material_id, :fabmoment_id]
    end
  end
end
