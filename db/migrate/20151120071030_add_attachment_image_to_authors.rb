class AddAttachmentImageToAuthors < ActiveRecord::Migration
  def self.up
    remove_column :authors, :image
    add_attachment :authors, :image
  end

  def self.down
    remove_attachment :authors, :image
    add_column :authors, :image, :string
  end
end
