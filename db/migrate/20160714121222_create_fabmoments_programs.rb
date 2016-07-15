class CreateFabmomentsPrograms < ActiveRecord::Migration
  def change
    create_join_table :fabmoments, :programs do |t|
      t.index [:fabmoment_id, :program_id]
      t.index [:program_id, :fabmoment_id]
    end
  end
end
