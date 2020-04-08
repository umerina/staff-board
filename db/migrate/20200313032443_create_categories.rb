class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.text :brand
      t.text :men
      t.text :women
      t.timestamps
    end
  end
end
