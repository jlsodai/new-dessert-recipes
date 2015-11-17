class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image
      t.text :description
      t.text :ingredients
      t.text :directions
      t.integer :ratings

      t.timestamps null: false
    end
  end
end
