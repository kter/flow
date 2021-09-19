# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_19_084603) do

  create_table "groups", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "tflow_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tflow_id"], name: "index_groups_on_tflow_id"
  end

  create_table "tasks", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "tflow_id", null: false
    t.index ["tflow_id"], name: "index_tasks_on_tflow_id"
  end

  create_table "tflows", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
  end

  create_table "user_flow_statuses", charset: "utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "tflow_id"
    t.bigint "task_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["task_id"], name: "index_user_flow_statuses_on_task_id"
    t.index ["tflow_id"], name: "index_user_flow_statuses_on_tflow_id"
    t.index ["user_id"], name: "index_user_flow_statuses_on_user_id"
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "group_id", null: false
    t.bigint "tflow_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_users_on_group_id"
    t.index ["tflow_id"], name: "index_users_on_tflow_id"
  end

  add_foreign_key "groups", "tflows"
  add_foreign_key "tasks", "tflows"
  add_foreign_key "users", "groups"
  add_foreign_key "users", "tflows"
end
