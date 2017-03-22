class UsersController < ApplicationController


  def show
    @user = User.find_by(id: params[:id])
    @guest = Guest.new
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
