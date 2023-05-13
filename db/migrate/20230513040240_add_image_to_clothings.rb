class AddImageToClothings < ActiveRecord::Migration[6.0]
  def change
    add_column :clothings, :image, :string
  end
end
