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
    t.string   "property_image_path"
    t.string   "property_other_details"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "property_title"
  end

end
