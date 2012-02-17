class UsersController < ApplicationController

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to(edit_biography_path(rand(Biography.count()) + 1)) # +1 because id's start at 1
  end
  

end
