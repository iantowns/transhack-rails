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

ActiveRecord::Schema.define(version: 20141120191439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "date"
    t.integer  "users_id"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["users_id"], name: "index_events_on_users_id", using: :btree

  create_table "insts", force: true do |t|
    t.string   "name"
    t.string   "contact"
    t.string   "location"
    t.string   "url"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orgs", force: true do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.string   "contact"
    t.string   "summary"
    t.integer  "inst_id"
    t.integer  "events_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orgs", ["events_id"], name: "index_orgs_on_events_id", using: :btree
  add_index "orgs", ["inst_id"], name: "index_orgs_on_inst_id", using: :btree
  add_index "orgs", ["owner_id"], name: "index_orgs_on_owner_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.boolean  "pemail"
    t.integer  "insts_id"
    t.integer  "orgs_id"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["insts_id"], name: "index_users_on_insts_id", using: :btree
  add_index "users", ["orgs_id"], name: "index_users_on_orgs_id", using: :btree

end
