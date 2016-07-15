class UsersController < ApplicationController
	before_action :set_user, only: [:show, :update_to_admin, :downgrade_to_user, :archive]
  def show
  end

  def update_to_admin
  	@user.update_attribute :admin, true
  	redirect_to admin_index_path
  end

  def downgrade_to_user
  	@user.update_attribute :admin, false
  	redirect_to admin_index_path
  end

  def archive
  	if @user == current_user
  		flash[:alert] = "U kunt uzelf niet verwijderen"
  	else
  		@user.archive
  		flash[:alert] = "Gebruiker is succesvol verwijderd"
  	end

  	redirect_to admin_index_path
  end
 
  private

  def set_user
  	  @user = User.find(params[:id])
  end
end
