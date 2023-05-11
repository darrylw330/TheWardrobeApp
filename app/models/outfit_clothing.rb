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
end
