class SitesController < ApplicationController

  # site home page
  before_action :is_authenticated?
  def index
  	 @user = User.find_by(id: session[:user_id])
  	
  end
end
