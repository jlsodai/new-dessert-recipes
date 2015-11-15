class CreateDessertTypes < ActiveRecord::Migration
  def change
    create_table :dessert_types do |t|
      t.string :type
      t.string :image

      t.timestamps null: false
    end
  end
end
