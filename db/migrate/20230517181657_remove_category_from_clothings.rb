class RemoveCategoryFromClothings < ActiveRecord::Migration[6.0]
  def change
    remove_column :clothings, :category
  end
end
