class AddCategoryToClothings < ActiveRecord::Migration[6.0]
  def change
    add_column :clothings, :category, :string
  end
end
