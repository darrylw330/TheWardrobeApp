class Generate < ApplicationRecord
  def self.random_outfit
    # Logic to generate a random outfit
    # Example:
    tops = ["T-Shirt", "Blouse", "Sweater", "Hoodie"]
    bottoms = ["Jeans", "Skirt", "Trousers"]
    shoes = ["Sneakers", "Boots", "Flats"]
    
    random_top = tops.sample
    random_bottom = bottoms.sample
    random_shoes = shoes.sample
    
    { top: random_top, bottom: random_bottom, shoes: random_shoes }
  end
end
