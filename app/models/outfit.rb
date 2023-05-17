# == Schema Information
#
# Table name: outfits
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Outfit < ApplicationRecord
  def self.random_outfit
    # Logic to generate a random outfit
    # Example:
    tops = ["T-Shirt", "Blouse", "Sweater"]
    bottoms = ["Jeans", "Skirt", "Trousers"]
    shoes = ["Sneakers", "Boots", "Flats"]
    
    random_top = tops.sample
    random_bottom = bottoms.sample
    random_shoes = shoes.sample
    
    { top: random_top, bottom: random_bottom, shoes: random_shoes }
  end
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })
  has_many(:outfit_clothings, { :class_name => "OutfitClothing", :foreign_key => "outfit_id", :dependent => :destroy })
end
