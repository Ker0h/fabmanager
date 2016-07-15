class CreateJoinTableTagsFabmoments < ActiveRecord::Migration
  def change
    create_join_table :tags, :fabmoments do |t|
      t.index [:tag_id, :fabmoment_id]
      t.index [:fabmoment_id, :tag_id]
    end
  end
end
