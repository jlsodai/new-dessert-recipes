class ChangeRecipesIdInComments < ActiveRecord::Migration
  def change
    rename_column :comments, :recipes_id, :recipe_id
  end
end
