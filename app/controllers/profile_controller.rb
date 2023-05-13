class ProfileController < ApplicationController
  def show
    
    @user = current_user

    render(:show)
  end

  private

  def current_user

    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
