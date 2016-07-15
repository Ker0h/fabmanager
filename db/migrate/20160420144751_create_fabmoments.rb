class CreateFabmoments < ActiveRecord::Migration
  def change
    create_table :fabmoments do |t|
      t.string :title
      t.text :desc

      t.timestamps null: false
    end
  end
end
