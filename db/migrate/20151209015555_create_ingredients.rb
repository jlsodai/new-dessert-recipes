class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :string
      t.belongs_to :recipe, index: true, foreign_key: true
      t.string :notes

      t.timestamps null: false
    end
  end
end
