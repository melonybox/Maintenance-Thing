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

ActiveRecord::Schema.define(version: 5) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "item_subsection_parts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "interval"
    t.integer "estimated_cost"
    t.integer "actual_cost"
    t.bigint "item_subsection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_subsection_id"], name: "index_item_subsection_parts_on_item_subsection_id"
  end

  create_table "item_subsections", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_item_subsections_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "overview_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["overview_id"], name: "index_items_on_overview_id"
  end

  create_table "overviews", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_overviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "item_subsection_parts", "item_subsections"
  add_foreign_key "item_subsections", "items"
  add_foreign_key "items", "overviews"
  add_foreign_key "overviews", "users"
end
