# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  outfits_count   :integer
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:clothings, { :class_name => "Clothing", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:outfits, { :class_name => "Outfit", :foreign_key => "user_id", :dependent => :destroy })
end
