class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :sort
      t.string :name
      t.integer :thickness

      t.timestamps null: false
    end
    add_reference :fabmoments, :material, index: true, foreign_key: true
  end
end
