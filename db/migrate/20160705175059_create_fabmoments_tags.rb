class CreateFabmomentsTags < ActiveRecord::Migration
  def change
  	drop_table :fabmoments_tags
    create_table :fabmoments_tags do |t|
      t.belongs_to :fabmoment, index: true, foreign_key: true
      t.belongs_to :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
