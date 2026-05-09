class RegistrationController < ApplicationController
  allow_unauthenticated_access
  def new
    if params[:key].nil?
      redirect_to new_session_path, notice: "Gaming Year Key Invalid"
      return
    end

    @registration_year = GamingYear.find_by(signup_key: params[:key])

    if @registration_year.nil?
      redirect_to new_session_path, notice: "Gaming Year Key Invalid"
      return
    end

    @user = User.new
  end

  def create
    if params[:registration_key].nil?
      redirect_to new_session_path, notice: "Gaming Year Key Invalid"
      return
    end

    @registration_year = GamingYear.find_by(signup_key: params[:registration_key])

    if @registration_year.nil?
      redirect_to new_session_path, notice: "Gaming Year Key Invalid"
      return
    end

    @user = User.new(user_params)

    if @user.save
      start_new_session_for @user
      redirect_to root_path, notice: 'You have been registered! Enjoy the Carnival!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :shirt_size, :attending_virtually, :key, :password, :password_confirmation)
  end
end
