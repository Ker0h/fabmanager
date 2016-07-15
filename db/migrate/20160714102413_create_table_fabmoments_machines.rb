class CreateTableFabmomentsMachines < ActiveRecord::Migration
  def change
    create_join_table :machines, :fabmoments do |t|
    	t.index [:machine_id, :fabmoment_id]
    	t.index [:fabmoment_id, :machine_id]
    end
  end
end
