class AdminController < ApplicationController
before_filter :authenticate_user! 
	before_filter do 
	  redirect_to homepage_path unless current_user && current_user.admin?
	end

  def index
	@users = User.excluding_archived.order(:email)
  end

  private

  def authenticate_user
  	current_user.admin?
  end
end
