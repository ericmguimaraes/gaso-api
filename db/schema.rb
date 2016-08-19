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

ActiveRecord::Schema.define(version: 20160819010011) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "brand"
    t.string   "model",      null: false
    t.string   "model_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cars_on_user_id", using: :btree
  end

  create_table "obd_log_groups", force: :cascade do |t|
    t.integer  "car_id",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_obd_log_groups_on_car_id", using: :btree
  end

  create_table "obd_logs", force: :cascade do |t|
    t.integer  "obd_log_group_id", null: false
    t.string   "pid",              null: false
    t.string   "mode",             null: false
    t.string   "status",           null: false
    t.string   "data"
    t.boolean  "parsed"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["obd_log_group_id"], name: "index_obd_logs_on_obd_log_group_id", using: :btree
  end

  create_table "station_rates", force: :cascade do |t|
    t.integer  "station_id"
    t.decimal  "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "cars", "users"
  add_foreign_key "obd_log_groups", "cars"
  add_foreign_key "obd_logs", "obd_log_groups"
end