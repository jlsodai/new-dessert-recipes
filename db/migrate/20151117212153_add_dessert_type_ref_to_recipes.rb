class AddDessertTypeRefToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :dessert_type, index: true, foreign_key: true
  end
end
