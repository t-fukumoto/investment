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

ActiveRecord::Schema.define(version: 20160707041612) do

  create_table "books", force: :cascade do |t|
    t.string   "books",      limit: 255
    t.text     "book_url",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "investers", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.integer  "age",             limit: 4
    t.string   "nanationality",   limit: 255
    t.integer  "risk",            limit: 4
    t.integer  "term",            limit: 4
    t.text     "history",         limit: 65535
    t.text     "investment_type", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image",           limit: 255
  end

  create_table "stockinformations", force: :cascade do |t|
    t.string   "link",       limit: 255
    t.string   "company",    limit: 255
    t.string   "ticker",     limit: 255
    t.string   "value",      limit: 255
    t.string   "share",      limit: 255
    t.float    "portfolio",  limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "name",                   limit: 255
    t.string   "image",                  limit: 255
    t.integer  "age",                    limit: 4
    t.string   "nationality",            limit: 255
    t.text     "job",                    limit: 65535
    t.integer  "cash",                   limit: 4
    t.integer  "stock",                  limit: 4
    t.integer  "bond",                   limit: 4
    t.integer  "comodity",               limit: 4
    t.integer  "realestate",             limit: 4
    t.integer  "others",                 limit: 4
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
