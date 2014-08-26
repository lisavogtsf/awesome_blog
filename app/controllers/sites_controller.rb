class SitesController < ApplicationController

  before_action :is_authenticated?
  before_filter :is_authenticated?, :except => :index
  # site home page
  def index
  	 @user = User.find_by(id: session[:user_id])
     if current_user != nil
      redirect_to users_path
    end
  end
end
