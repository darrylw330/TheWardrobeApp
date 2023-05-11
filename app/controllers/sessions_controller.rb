class SessionsController < ApplicationController
  # ...
  
  def after_sign_in_path(resource)
    dashboard_path
  end
end
