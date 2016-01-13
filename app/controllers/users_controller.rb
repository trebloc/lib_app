class UsersController < ApplicationController
# grab the users
  def index
    @users = User.all
    render :index
  end

  def new
    # we need to make
    # a new user
    # to pass to the
    # form later
    @user = User.new
    render :new
  end  

end