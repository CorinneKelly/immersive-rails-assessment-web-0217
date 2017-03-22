class SessionsController < ApplicationController


  def create
  	@user = User.find_or_create_by(username: user_params[:username])
  	byebug
  	session[:user_id] = @user.id
  	redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
