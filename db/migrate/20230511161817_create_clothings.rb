class CreateClothings < ActiveRecord::Migration[6.0]
  def change
    create_table :clothings do |t|
      t.integer :user_id
      t.string :brand
      t.string :color
      t.string :image

      t.timestamps
    end
  end
end
