# == Schema Information
#
# Table name: clothings
#
#  id          :integer          not null, primary key
#  brand       :string
#  color       :string
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  user_id     :integer
#
class Clothing < ApplicationRecord
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  belongs_to :category
  has_many(:outfit_clothings, { :class_name => "OutfitClothing", :foreign_key => "clothing_id", :dependent => :destroy })
  # has_one_attached :image
  mount_uploader :image, ImageUploader
end
