class PagesController < ApplicationController
  def home
    # Add your code for the home action here
    # For example, you can set an instance variable to pass data to the view
    @message = "Welcome to the home page!"
  end
end
