class AddLevelIdToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :level, index: true, foreign_key: true
  end
end
