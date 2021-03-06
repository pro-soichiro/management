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

ActiveRecord::Schema.define(version: 2022_04_08_141227) do

  create_table "circles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "circles_members", force: :cascade do |t|
    t.integer "circle_id"
    t.integer "member_id"
    t.index ["circle_id"], name: "index_circles_members_on_circle_id"
    t.index ["member_id"], name: "index_circles_members_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_members_on_project_id"
  end

  create_table "project_managers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.integer "project_manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_manager_id"], name: "index_projects_on_project_manager_id"
  end

end
