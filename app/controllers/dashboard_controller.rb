class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    # Add logic to retrieve data for the user dashboard
    # For example, fetch user-related information from the database
    @user = current_user
  end
end
