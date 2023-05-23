class ClothingsController < ApplicationController
  def index
    @list_of_clothings = Clothing.order(created_at: :desc)
    render template: "clothings/index.html.erb"
  end

  def show
    the_id = params.fetch("path_id")
    @the_clothing = Clothing.find_by(id: the_id)
    render template: "clothings/show.html.erb"
  end

  def create
    the_clothing = Clothing.new(clothing_params)
    the_clothing.user = @current_user

    if the_clothing.save
      redirect_to clothings_path, notice: "Clothing created successfully."
    else
      redirect_to clothings_path, alert: the_clothing.errors.full_messages.to_sentence
    end
  end

  def new
    @clothing = Clothing.new
  end

  def insert_clothing
    unless params[:query_brand].present?
      redirect_to new_clothing_path, alert: "Brand parameter is missing or empty"
      return
    end
  
    the_clothing = Clothing.new(clothing_params)
    the_clothing.user = @current_user

    if the_clothing.valid?
      the_clothing.save
      redirect_to clothings_path, notice: "Clothing created successfully."
    else
      redirect_to clothings_path, alert: the_clothing.errors.full_messages.to_sentence
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_clothing = Clothing.find_by(id: the_id)

    the_clothing.user_id = params.fetch("query_user_id")
    the_clothing.brand = params.fetch("query_brand")
    the_clothing.color = params.fetch("query_color")
    the_clothing.image = params.fetch("query_image")

    if the_clothing.valid?
      the_clothing.save
      redirect_to "/clothings/#{the_clothing.id}", notice: "Clothing updated successfully."
    else
      redirect_to "/clothings/#{the_clothing.id}", alert: the_clothing.errors.full_messages.to_sentence
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_clothing = Clothing.find_by(id: the_id)
    the_clothing.destroy

    redirect_to clothings_path, notice: "Clothing deleted successfully."
  end

  private

  def clothing_params
    params.require(:clothing).permit(:brand, :category_id, :color, :image)
  end
end
