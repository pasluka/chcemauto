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

ActiveRecord::Schema.define(version: 20140414140355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "engines", force: true do |t|
    t.string   "title"
    t.integer  "model_id"
    t.integer  "cylinders"
    t.integer  "volume"
    t.integer  "power"
    t.integer  "powerin"
    t.integer  "torque"
    t.integer  "torquein"
    t.float    "accel"
    t.float    "consucity"
    t.float    "consuextra"
    t.float    "counsucomb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "engines", ["model_id"], name: "index_engines_on_model_id", using: :btree

  create_table "models", force: true do |t|
    t.string   "title"
    t.string   "bodystyle"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "models", ["brand_id"], name: "index_models_on_brand_id", using: :btree

  create_table "versions", force: true do |t|
    t.string   "title"
    t.integer  "price"
    t.integer  "brand_id"
    t.integer  "model_id"
    t.integer  "engine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "versions", ["engine_id"], name: "index_versions_on_engine_id", using: :btree
  add_index "versions", ["model_id"], name: "index_versions_on_model_id", using: :btree

end
