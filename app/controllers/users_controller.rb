class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      # re-render users new view and flash error message
    end
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
