class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def create
  	@guest = Guest.find_or_create_by(name: guest_params[:name], occupation: guest_params[:occupation])
  	redirect_to "/"
  end

  def show
  	@guest = Guest.find_by(id: params[id])
  end

  private
  def guest_params
  	params.require(:guest).permit(:name, :occupation, :episodes)
  end
end
