# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  image           :string
#  name            :string
#  outfits_count   :integer
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password
  mount_uploader :image, ImageUploader
  # Add the name attribute to the list of accessible attributes
  # attr_accessor :name

  # Validate the presence of the name attribute
  validates :name, presence: true

  has_many(:clothings, { :class_name => "Clothing", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:outfits, { :class_name => "Outfit", :foreign_key => "user_id", :dependent => :destroy })
end
