class RenameTypeToNameInDessertType < ActiveRecord::Migration
  def change
    rename_column :dessert_types, :type, :name
  end
end
