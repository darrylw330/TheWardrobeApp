class OutfitClothingsController < ApplicationController
  def index
    matching_outfit_clothings = OutfitClothing.all

    @list_of_outfit_clothings = matching_outfit_clothings.order({ :created_at => :desc })

    render({ :template => "outfit_clothings/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_outfit_clothings = OutfitClothing.where({ :id => the_id })

    @the_outfit_clothing = matching_outfit_clothings.at(0)

    render({ :template => "outfit_clothings/show.html.erb" })
  end

  def create
    the_outfit_clothing = OutfitClothing.new
    the_outfit_clothing.clothing_id = params.fetch("query_clothing_id")
    the_outfit_clothing.outfit_id = params.fetch("query_outfit_id")

    if the_outfit_clothing.valid?
      the_outfit_clothing.save
      redirect_to("/outfit_clothings", { :notice => "Outfit clothing created successfully." })
    else
      redirect_to("/outfit_clothings", { :alert => the_outfit_clothing.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_outfit_clothing = OutfitClothing.where({ :id => the_id }).at(0)

    the_outfit_clothing.clothing_id = params.fetch("query_clothing_id")
    the_outfit_clothing.outfit_id = params.fetch("query_outfit_id")

    if the_outfit_clothing.valid?
      the_outfit_clothing.save
      redirect_to("/outfit_clothings/#{the_outfit_clothing.id}", { :notice => "Outfit clothing updated successfully."} )
    else
      redirect_to("/outfit_clothings/#{the_outfit_clothing.id}", { :alert => the_outfit_clothing.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_outfit_clothing = OutfitClothing.where({ :id => the_id }).at(0)

    the_outfit_clothing.destroy

    redirect_to("/outfit_clothings", { :notice => "Outfit clothing deleted successfully."} )
  end
end
