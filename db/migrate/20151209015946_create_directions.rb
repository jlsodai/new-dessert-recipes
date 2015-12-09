class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.text :info
      t.belongs_to :recipe, index: true, foreign_key: true
      t.string :preparation_time
      t.belongs_to :level, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
