# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  bottom     :boolean          default(FALSE)
#  hat        :boolean          default(FALSE)
#  shoes      :boolean          default(FALSE)
#  top        :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many :clothings
end
