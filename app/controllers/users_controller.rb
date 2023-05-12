class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      # User successfully signed up, redirect to the dashboard
      redirect_to user_dashboard_path(@user)
    else
      # Handle the case where sign-up fails
      render :new
    end
  end

  private

  def user_params
    # Define the allowed parameters for user creation
    params.require(:user).permit(:email, :username, :outfits_count, :password, :password_confirmation)
  end
end
