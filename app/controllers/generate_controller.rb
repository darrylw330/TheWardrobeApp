class GenerateController < ApplicationController
  def index
    # Retrieve the user's uploaded clothing images from the database
    @clothing = current_user.clothings

    # Randomly select a piece of clothing from each category
    @top = @clothing.where(category: 'top').sample
    @bottom = @clothing.where(category: 'bottom').sample
    @shoes = @clothing.where(category: 'shoes').sample

    render(:index)
  end
end
