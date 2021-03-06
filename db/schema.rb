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

ActiveRecord::Schema.define(version: 20161204213126) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "asset_types", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  create_table "assets", force: :cascade do |t|
    t.integer  "asset_type_id"
    t.integer  "user_id"
    t.integer  "asset_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "historical_net_worths", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "date"
    t.integer  "asset_total_id"
    t.integer  "liabilities_total_id"
    t.integer  "net_worth_total_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liabilities", force: :cascade do |t|
    t.integer  "liabilities_type_id"
    t.integer  "user_id"
    t.integer  "liabilities_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liability_types", force: :cascade do |t|
    t.integer  "credit_cards"
    t.string   "other_current_liabilities"
    t.integer  "mortgages"
    t.integer  "student_loans"
    t.string   "automobile_loans"
    t.integer  "other_long_term_liabilities"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "net_worths", force: :cascade do |t|
    t.integer  "asset_total_id"
    t.integer  "liabilities_total_id"
    t.integer  "net_worth_total_id"
    t.integer  "user_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
