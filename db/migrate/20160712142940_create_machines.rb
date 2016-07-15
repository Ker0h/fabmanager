class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
    	t.string :name

      t.timestamps null: false
    end
     add_reference :fabmoments, :machine, index: true, foreign_key: true
  end
end
