class UploadController < ApplicationController
  def index
    # Render the upload page view
    render :index
  end

  def insert_clothing
    query_user_id = params[:clothing][:query_user_id]
  
    # Create a new instance of Clothing and assign the attributes
    @clothing = Clothing.new(clothing_params)
  
    # Assign the user ID to the clothing item
    @clothing.user_id = query_user_id
  
    if @clothing.save
      # Clothing item successfully saved
      redirect_to user_profile_path(query_user_id)
    else
      # Handle the case where saving the clothing item fails
      # You can render a view or redirect to an error page
      # For simplicity, let's render the upload view with an error message
      render :upload, alert: 'Failed to save the clothing item.'
    end
  end

  private

  def clothing_params
    params.require(:clothing).permit(:image, :query_brand, :query_user_id)
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
