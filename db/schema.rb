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

ActiveRecord::Schema.define(version: 20160316214301) do

  create_table "adoptions", force: :cascade do |t|
    t.string   "email"
    t.string   "street_address"
    t.string   "mailing_address"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "home_phone"
    t.string   "cell_phone"
    t.string   "work_phone"
    t.boolean  "age"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "rescue_id"
    t.integer  "animal_id"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "adoptions", ["animal_id"], name: "index_adoptions_on_animal_id"
  add_index "adoptions", ["rescue_id"], name: "index_adoptions_on_rescue_id"

  create_table "animals", force: :cascade do |t|
    t.string   "name"
    t.string   "breed"
    t.string   "sex"
    t.date     "dob"
    t.integer  "rescue_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "slug"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "animals", ["rescue_id"], name: "index_animals_on_rescue_id"
  add_index "animals", ["slug"], name: "index_animals_on_slug", unique: true

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "rescues", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "email"
    t.string   "slug"
  end

  add_index "rescues", ["email"], name: "index_rescues_on_email", unique: true
  add_index "rescues", ["slug"], name: "index_rescues_on_slug", unique: true

end
