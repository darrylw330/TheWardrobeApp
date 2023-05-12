class DashboardController < ApplicationController
  before_action :force_user_sign_in

  def index
    # Add logic to retrieve data for the user dashboard
    # For example, fetch user-related information from the database
    render({ template: "dashboard/index.html.erb" })
  end
end
