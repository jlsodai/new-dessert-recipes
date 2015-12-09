class RemoveStringFromIngredients < ActiveRecord::Migration
  def change
    remove_column :ingredients, :string, :string
  end
end
