class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :email
      t.text :bio
      t.boolean :expertise

      t.timestamps null: false
    end
  end
end
