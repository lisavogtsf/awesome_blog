class UsersController < ApplicationController

  def index

  end

  # display new user form
  def new
    @user = User.new
  end

  # create new user
  def create

  end

  # show one user
  def show
    find_user_by_id
  end

  private

  def find_user_by_id
    user_id = params[:id]
    @user = User.find_by_id(user_id)
  end

end
