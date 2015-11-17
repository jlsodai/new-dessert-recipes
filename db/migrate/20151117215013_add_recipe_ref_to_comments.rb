class AddRecipeRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :recipes, index: true, foreign_key: true
  end
end
