class AddCategoryIdToClothings < ActiveRecord::Migration[6.0]
  def change
    add_column :clothings, :category_id, :integer
  end
end
