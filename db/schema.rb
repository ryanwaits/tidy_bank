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

ActiveRecord::Schema.define(version: 20160512023741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "username"
    t.string  "email"
    t.string  "password_digest"
    t.integer "parent_id"
    t.float   "balance",         default: 0.0
  end

  add_index "children", ["parent_id"], name: "index_children_on_parent_id", using: :btree

  create_table "parents", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
  end

  create_table "tasks", force: :cascade do |t|
    t.text    "description"
    t.integer "child_id"
    t.float   "price"
    t.date    "due_date"
    t.boolean "completed",   default: false
  end

  add_index "tasks", ["child_id"], name: "index_tasks_on_child_id", using: :btree

  add_foreign_key "children", "parents"
  add_foreign_key "tasks", "children"
end
