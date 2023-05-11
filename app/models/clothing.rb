# == Schema Information
#
# Table name: clothings
#
#  id         :integer          not null, primary key
#  brand      :string
#  color      :string
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Clothing < ApplicationRecord
end
