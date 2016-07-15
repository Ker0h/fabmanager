class AddFabmomentToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :fabmoment, index: true, foreign_key: true
  end
end
