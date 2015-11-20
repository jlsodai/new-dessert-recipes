class AddAttachmentImageToRecipes < ActiveRecord::Migration
  def self.up
    remove_column :recipes, :image
    add_attachment :recipes, :image
  end

  def self.down
    remove_attachment :recipes, :image
    add_column :recipes, :image, :string
  end
end
