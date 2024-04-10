class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params.dig(:user, :email))
    if @user && @user.authenticate(params.dig(:user, :password))
      sign_in(@user) # Ensure sign_in method is defined or comes from a library like Devise.
      redirect_to root_path, notice: "You have successfully logged in!"
    else
      @user ||= User.new(email: params.dig(:user, :email))
      @user.errors.add(:base, "Invalid email or password")
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "You have been logged out."
  end
end
