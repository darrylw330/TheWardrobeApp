class AddTopToClothings < ActiveRecord::Migration[6.0]
  def change
    add_column :clothings, :category, :string
    Clothing.reset_column_information
  end
end
