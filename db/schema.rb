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

ActiveRecord::Schema.define(version: 20150112015252) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "people", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.string   "userid"
    t.datetime "active_date"
    t.datetime "inactive_date"
    t.string   "created_by"
    t.datetime "created_at",    null: false
    t.string   "updated_by"
    t.datetime "updated_at",    null: false
  end

  create_table "person_group_members", force: :cascade do |t|
    t.integer  "person_group_id"
    t.integer  "person_id"
    t.datetime "active_date"
    t.datetime "inactive_date"
    t.string   "created_by"
    t.datetime "created_at",      null: false
    t.string   "updated_by"
    t.datetime "updated_at",      null: false
  end

  create_table "person_groups", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.string   "url"
    t.datetime "active_date"
    t.datetime "inactive_date"
    t.string   "created_by"
    t.datetime "created_at",    null: false
    t.string   "updated_by"
    t.datetime "updated_at",    null: false
  end

  create_table "project_managers", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "person_id"
    t.integer  "primary"
    t.datetime "active_date"
    t.datetime "inactive_date"
    t.string   "created_by"
    t.datetime "created_at",    null: false
    t.string   "updated_by"
    t.datetime "updated_at",    null: false
  end

  create_table "project_person_estimates", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "person_id"
    t.decimal  "time_amount"
    t.integer  "time_unit_type_id"
    t.datetime "active_date"
    t.datetime "inactive_date"
    t.string   "created_by"
    t.datetime "created_at",        null: false
    t.string   "updated_by"
    t.datetime "updated_at",        null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.string   "url"
    t.datetime "active_date"
    t.datetime "inactive_date"
    t.string   "created_by"
    t.datetime "created_at",    null: false
    t.string   "updated_by"
    t.datetime "updated_at",    null: false
  end

  create_table "time_unit_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.string   "url"
    t.decimal  "equivalent_hours"
    t.datetime "active_date"
    t.datetime "inactive_date"
    t.string   "created_by"
    t.datetime "created_at",       null: false
    t.string   "updated_by"
    t.datetime "updated_at",       null: false
  end

end
