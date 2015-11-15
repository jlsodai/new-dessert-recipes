class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image
      t.text :description
      t.text :ingredients
      t.text :directions
      t.integer :ratings
      t.integer :author_id
      t.integer :dessert_type_id

      t.timestamps null: false
    end
  end
end
