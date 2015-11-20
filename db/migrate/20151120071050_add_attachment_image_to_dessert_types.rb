class AddAttachmentImageToDessertTypes < ActiveRecord::Migration
  def self.up
    remove_column :dessert_types, :image
    add_attachment :dessert_types, :image
  end

  def self.down
    remove_attachment :dessert_types, :image
    add_column :dessert_types, :image, :string
  end
end