# == Schema Information
#
# Table name: outfit_clothings
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  clothing_id :integer
#  outfit_id   :integer
#
class OutfitClothing < ApplicationRecord
  belongs_to(:clothing, { :required => true, :class_name => "Clothing", :foreign_key => "clothing_id" })
  belongs_to(:outfit, { :required => true, :class_name => "Outfit", :foreign_key => "outfit_id" })
end
