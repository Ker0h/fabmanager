class CreateSoftwares < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name


      t.timestamps null: false
    end
    add_reference :fabmoments, :program, index: true, foreign_key: true
  end
end
