# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151119195319) do

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.text     "bio"
    t.boolean  "expertise"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "recipe_id"
  end

  add_index "comments", ["recipe_id"], name: "index_comments_on_recipe_id"

  create_table "dessert_types", force: :cascade do |t|
    t.string   "type"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "ingredients"
    t.text     "directions"
    t.integer  "ratings"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "author_id"
    t.integer  "dessert_type_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "recipes", ["author_id"], name: "index_recipes_on_author_id"
  add_index "recipes", ["dessert_type_id"], name: "index_recipes_on_dessert_type_id"

end
