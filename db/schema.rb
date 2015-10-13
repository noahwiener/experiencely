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

ActiveRecord::Schema.define(version: 20151013183503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string   "user_name",       null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.string   "first_name"
    t.string   "last_name"
    t.text     "about_me"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["password_digest"], name: "index_users_on_password_digest", using: :btree
  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["user_name"], name: "index_users_on_user_name", unique: true, using: :btree

  create_table "workshops", force: :cascade do |t|
    t.integer  "host_id",                       null: false
    t.string   "title",                         null: false
    t.text     "details"
    t.date     "date"
    t.time     "start_time"
    t.integer  "current_attendees", default: 0
    t.integer  "max_attendees"
    t.float    "lat"
    t.float    "lng"
    t.string   "location",                      null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "workshops", ["host_id"], name: "index_workshops_on_host_id", using: :btree
  add_index "workshops", ["title"], name: "index_workshops_on_title", unique: true, using: :btree

end
