class UploadController < ApplicationController
  def index
    # Render the upload page view
    render :index
  end

  def create
    # Logic to handle the image upload and save it in the database
    @clothing = Clothing.new(clothing_params)
    if @clothing.save
      redirect_to user_profile_path, notice: "Clothing uploaded successfully!"
    else
      render :index
    end
  end

  private

  def clothing_params
    params.require(:clothing).permit(:name, :image)
  end
end

