class SignupsController < ApplicationController
  before_action :check_ENV, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "You have successfully signed up!"
    else
      flash.now[:alert] = "There was a problem signing up."
      render :new, status: 422
    end
  end

  private

  def check_ENV
    unless ENV["SIGNUP_ENABLED"] == "true"
      flash[:alert] = "Signups are currently disabled."
      redirect_to root_path
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
