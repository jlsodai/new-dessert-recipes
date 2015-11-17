class AddAuthorRefToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :author, index: true, foreign_key: true
  end
end
