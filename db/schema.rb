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

ActiveRecord::Schema.define(version: 20150926194133) do

  create_table "book_histories", force: :cascade do |t|
    t.integer  "book_id",     limit: 4
    t.integer  "user_id",     limit: 4
    t.datetime "chk_out_dt"
    t.datetime "chk_in_date"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "book_histories", ["book_id"], name: "index_book_histories_on_book_id", using: :btree
  add_index "book_histories", ["user_id"], name: "index_book_histories_on_user_id", using: :btree

  create_table "books", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.string   "description",  limit: 255
    t.string   "author",       limit: 255
    t.string   "isbn",         limit: 255
    t.boolean  "is_borrowed",  limit: 1
    t.boolean  "is_deleted",   limit: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",      limit: 4
    t.boolean  "is_requested", limit: 1
    t.integer  "requested_by", limit: 4
  end

  add_index "books", ["user_id"], name: "index_books_on_user_id", using: :btree

  create_table "searches", force: :cascade do |t|
    t.string   "isbn",        limit: 255
    t.string   "title",       limit: 255
    t.string   "description", limit: 255
    t.string   "author",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "password_digest", limit: 255
    t.string   "email",           limit: 255
    t.string   "address",         limit: 255
    t.string   "phone",           limit: 255
    t.boolean  "is_admin",        limit: 1
    t.boolean  "is_deleted",      limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "requested_by",    limit: 1
    t.boolean  "super_admin",     limit: 1
  end

  add_foreign_key "books", "users"
end
