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

ActiveRecord::Schema.define(version: 20171204230816) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.integer "owner_id"
    t.integer "user_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "idioms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_idioms", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "idiom_id"
    t.boolean  "learn"
    t.boolean  "teach"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_idioms", ["idiom_id"], name: "index_user_idioms_on_idiom_id", using: :btree
  add_index "user_idioms", ["user_id"], name: "index_user_idioms_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.string   "address"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.date     "birth_date",                          null: false
    t.string   "gender"
    t.text     "bio"
    t.string   "skypeusername"
  end

  add_index "users", ["country_id"], name: "index_users_on_country_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "user_idioms", "idioms"
  add_foreign_key "user_idioms", "users"
  add_foreign_key "users", "countries"
end
