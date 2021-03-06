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

ActiveRecord::Schema.define(version: 20140313025440) do

  create_table "expense_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expenses", force: true do |t|
    t.integer  "user_id"
    t.integer  "expense_type_id"
    t.string   "description"
    t.date     "date"
    t.decimal  "amount",          precision: 8, scale: 2
    t.string   "currency"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",                                  default: "not reimbursed"
  end

  add_index "expenses", ["expense_type_id"], name: "index_expenses_on_expense_type_id"
  add_index "expenses", ["user_id"], name: "index_expenses_on_user_id"

  create_table "task_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.integer  "task_type_id"
    t.string   "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["task_type_id"], name: "index_tasks_on_task_type_id"
  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id"

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "u_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
