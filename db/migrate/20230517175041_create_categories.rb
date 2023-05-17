class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.boolean :top, default: false
      t.boolean :bottom, default: false
      t.boolean :shoes, default: false
      t.boolean :hat, default: false

      t.timestamps
    end
  end
end
