class UsersController < ApplicationController
  load_and_authorize_resource
  
  def index
    @users = User.all.order(name: :asc)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    if current_user == @user
      redirect_to edit_user_registration_path, notice: 'Account Updated'
    else
      redirect_to users_path, notice: 'Account Updated'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path, notice: 'Account Removed'
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :shirt_size, :attending_virtually, role_ids: [])
  end
end
