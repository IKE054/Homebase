class UsersController < ApplicationController
  def edit
  	@user = User.find(params[:id])
  end

  def show
    @items = Item.where(user_id: current_user.id)
    @rooms = Room.where(user_id: current_user.id)
  end

  def update
  	@user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(
    	:name, :introduction, :email, :profile_image, :header_image)

  end
end
