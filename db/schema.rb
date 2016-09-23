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

ActiveRecord::Schema.define(version: 20160415051946) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "addressable_id",   limit: 4
    t.string   "addressable_type", limit: 255
    t.string   "door_no",          limit: 255
    t.string   "street_one",       limit: 255
    t.string   "street_two",       limit: 255
    t.string   "city",             limit: 255
    t.string   "state",            limit: 255
    t.string   "country",          limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "insurences", force: :cascade do |t|
    t.decimal  "ins_amt",                 precision: 10
    t.date     "ins_date"
    t.integer  "no_of_years",   limit: 4
    t.integer  "subscriber_id", limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "lcos", force: :cascade do |t|
    t.string   "mso_name",   limit: 255
    t.string   "lco_name",   limit: 255
    t.string   "lco_code",   limit: 255
    t.integer  "mobile_no",  limit: 8
    t.string   "email_id",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string   "user_name",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "mobile_no",  limit: 8
  end

  create_table "stbs", force: :cascade do |t|
    t.string   "model",        limit: 255
    t.string   "stb_no",       limit: 255
    t.text     "description",  limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "insurence_id", limit: 4
  end

  create_table "subscribers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email_id",   limit: 255
    t.integer  "mobile_no",  limit: 8
    t.integer  "lco_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
