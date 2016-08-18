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

ActiveRecord::Schema.define(version: 20160816172111) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.string   "first_name"
    t.string   "mid_name"
    t.string   "last_name"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "phone"
    t.string   "em_first_name"
    t.string   "em_last_name"
    t.string   "em_relation"
    t.string   "em_street1"
    t.string   "em_street2"
    t.string   "em_city"
    t.string   "em_state"
    t.integer  "em_zip"
    t.integer  "em_phone"
    t.datetime "fngrprnt_appt"
    t.string   "maiden_name"
    t.date     "dob"
    t.string   "birth_city"
    t.string   "gender"
    t.integer  "ht_ft"
    t.integer  "ht_in"
    t.string   "eye_color"
    t.string   "license_state"
    t.string   "license_num"
    t.string   "mom_maiden_name"
    t.string   "prev_street1"
    t.string   "prev_street2"
    t.string   "prev_city"
    t.string   "prev_state"
    t.integer  "prev_zip"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

end
