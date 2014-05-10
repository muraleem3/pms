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

ActiveRecord::Schema.define(version: 20140507122120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "features", force: true do |t|
    t.integer  "property_id"
    t.string   "property_type"
    t.string   "property_type_code"
    t.integer  "property_bhk"
    t.integer  "property_floors"
    t.string   "property_facing"
    t.integer  "property_carparking"
    t.string   "property_parking_area"
    t.string   "property_swimpool"
    t.string   "property_events"
    t.string   "property_libroom"
    t.string   "property_spa"
    t.string   "property_fitcenter"
    t.string   "property_trans"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.integer  "property_id"
    t.string   "property_type"
    t.string   "property_type_code"
    t.string   "property_location"
    t.string   "property_locality"
    t.string   "property_status"
    t.date     "property_list_date"
    t.date     "property_sold_date"
    t.string   "property_owner"
    t.string   "property_description"
    t.float    "property_min_price"
    t.float    "property_max_price"
    t.float    "property_area_min"
    t.string   "property_area_measure"
    t.string   "property_address"
    t.string   "property_name"
    t.string   "property_description"
    t.float    "property_min_price"
    t.float    "property_max_price"
    t.string   "property_transaction"
    t.string   "_type"
    t.string   "property_posted_by"
    t.string   "property_facing"
    t.float    "property_area_min"
    t.float    "property_area_max"
    t.string   "property_area_measure"
    t.string   "property_bhk"
    t.string   "property_title"
    t.string   "avatar"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.integer  "mobilenumber"
    t.string   "role"
    t.boolean  "alert"
    t.string   "mobile"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
