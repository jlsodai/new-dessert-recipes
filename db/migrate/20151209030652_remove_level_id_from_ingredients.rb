class RemoveLevelIdFromIngredients < ActiveRecord::Migration
  def change
    remove_column :ingredients, :level_id, :string
  end
end
