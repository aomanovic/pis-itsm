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

ActiveRecord::Schema.define(version: 20150524204033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authorizations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "change_request_id"
    t.boolean  "authorized"
    t.text     "comment"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "business_processes", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "change_evaluations", force: :cascade do |t|
    t.integer  "rate"
    t.text     "description"
    t.integer  "change_request"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "change_requests", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "priority"
  end

  create_table "changes", force: :cascade do |t|
    t.string   "plan"
    t.integer  "change_request"
    t.text     "comment"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "hardware_elements", force: :cascade do |t|
    t.integer  "code"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "hardware_elements", ["code"], name: "index_hardware_elements_on_code", unique: true, using: :btree

  create_table "incidents", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "user"
    t.string   "new"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "istrazivanjes", force: :cascade do |t|
    t.string   "klasa"
    t.text     "komentar"
    t.boolean  "potreban_zahtjev"
    t.integer  "problem_id"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "promjena",         default: "Default promjena"
  end

  add_index "istrazivanjes", ["problem_id"], name: "index_istrazivanjes_on_problem_id", using: :btree

  create_table "it_processes", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "importance"
    t.integer  "business_process"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name"
    t.string   "steps"
    t.string   "estimation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "problems", force: :cascade do |t|
    t.string   "naziv"
    t.string   "opis"
    t.text     "kategorija"
    t.string   "prioritet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "risks", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "possibility"
    t.integer  "it_process"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "software_elements", force: :cascade do |t|
    t.integer  "code"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "software_elements", ["code"], name: "index_software_elements_on_code", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "istrazivanjes", "problems"
end
