class EditUserTable < ActiveRecord::Migration
  def change
  	change_column :users, :date_of_birth, :date 
  	add_column :users, :first_name, :string
  	add_column :users, :surname, :string
  	add_column :users, :gender, :string
  	add_column :users, :country, :string
  	add_column  :users, :province, :string
  	add_column :users, :city, :string
  end
end
