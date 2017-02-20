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

ActiveRecord::Schema.define(version: 20170220182514) do

  create_table "questionnaires", force: :cascade do |t|
    t.text     "fio"
    t.text     "school_number"
    t.integer  "index"
    t.text     "city"
    t.text     "street"
    t.text     "building"
    t.text     "apartment"
    t.text     "phone_number"
    t.date     "filling_date"
    t.integer  "stay_duration"
    t.boolean  "industrial_presence"
    t.integer  "age"
    t.date     "birth_date"
    t.text     "sex"
    t.boolean  "a_1"
    t.boolean  "a_2"
    t.integer  "a_3",                 default: 0
    t.integer  "a_4",                 default: 0
    t.boolean  "a_5"
    t.boolean  "a_6"
    t.boolean  "a_7"
    t.boolean  "a_8"
    t.boolean  "b_1"
    t.boolean  "b_2"
    t.boolean  "b_3"
    t.boolean  "b_4_01"
    t.boolean  "b_4_02"
    t.boolean  "b_4_03"
    t.boolean  "b_4_04"
    t.boolean  "b_4_05"
    t.boolean  "b_4_06"
    t.boolean  "b_4_07"
    t.boolean  "b_4_08"
    t.boolean  "b_4_09"
    t.boolean  "b_4_10"
    t.boolean  "b_4_11"
    t.boolean  "b_4_12"
    t.integer  "b_5",                 default: 0
    t.boolean  "b_6"
    t.boolean  "c_1"
    t.boolean  "c_2"
    t.boolean  "c_3"
    t.integer  "c_4",                 default: 0
    t.boolean  "c_5"
    t.integer  "c_6",                 default: 0
    t.boolean  "c_7"
    t.boolean  "d_1_1"
    t.boolean  "d_1_2"
    t.boolean  "d_1_3"
    t.boolean  "d_1_4"
    t.boolean  "d_1_5"
    t.boolean  "d_1_6"
    t.boolean  "d_1_7"
    t.boolean  "d_1_8"
    t.boolean  "d_1_9"
    t.boolean  "d_1_10"
    t.boolean  "d_1_11"
    t.boolean  "d_1_12"
    t.boolean  "d_1_13"
    t.boolean  "d_1_14"
    t.boolean  "d_1_15"
    t.boolean  "d_1_16"
    t.boolean  "d_1_17"
    t.boolean  "d_1_18"
    t.boolean  "d_1_19"
    t.boolean  "d_1_20"
    t.text     "d_1_20_description"
    t.boolean  "d_1_0"
    t.boolean  "d_2_1"
    t.boolean  "d_2_2"
    t.boolean  "d_2_3"
    t.boolean  "d_2_4"
    t.boolean  "d_2_5"
    t.boolean  "d_2_6"
    t.boolean  "d_2_7"
    t.boolean  "d_2_8"
    t.boolean  "d_2_9"
    t.boolean  "d_2_10"
    t.boolean  "d_2_11"
    t.boolean  "d_2_12"
    t.boolean  "d_2_13"
    t.boolean  "d_2_14"
    t.boolean  "d_2_15"
    t.boolean  "d_2_16"
    t.boolean  "d_2_17"
    t.boolean  "d_2_18"
    t.boolean  "d_2_19"
    t.boolean  "d_2_20"
    t.boolean  "d_2_0"
    t.text     "d_3"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.text     "user"
    t.integer  "dop_1",               default: 1
    t.boolean  "dop_2_1",             default: false
    t.boolean  "dop_2_2",             default: false
    t.boolean  "dop_2_3",             default: false
    t.boolean  "dop_2_4",             default: false
    t.boolean  "dop_2_5",             default: false
    t.boolean  "dop_2_6",             default: false
    t.integer  "dop_3",               default: 3
    t.integer  "dop_4",               default: 2
    t.integer  "dop_5",               default: 3
    t.boolean  "dop_6_1",             default: false
    t.boolean  "dop_6_2",             default: false
    t.boolean  "dop_6_3",             default: false
    t.boolean  "dop_6_4",             default: false
    t.boolean  "dop_6_5",             default: false
    t.boolean  "dop_7_1",             default: false
    t.boolean  "dop_7_2",             default: false
    t.boolean  "dop_7_3",             default: false
    t.boolean  "dop_7_4",             default: false
    t.boolean  "dop_7_5",             default: false
    t.boolean  "dop_8_1",             default: false
    t.boolean  "dop_8_2",             default: false
    t.boolean  "dop_8_3",             default: false
    t.boolean  "dop_8_4",             default: false
    t.boolean  "dop_8_5",             default: false
    t.boolean  "dop_9_1",             default: false
    t.boolean  "dop_9_2",             default: false
    t.boolean  "dop_9_3",             default: false
    t.boolean  "dop_9_4",             default: false
    t.boolean  "dop_10_1",            default: false
    t.boolean  "dop_10_2",            default: false
    t.boolean  "dop_10_3",            default: false
    t.boolean  "dop_10_4",            default: false
    t.boolean  "dop_10_5",            default: false
    t.boolean  "dop_10_6",            default: false
    t.integer  "dop_11",              default: 1
    t.integer  "dop_12",              default: 1
    t.integer  "dop_13",              default: 0
    t.integer  "dop_14",              default: 0
    t.integer  "dop_15",              default: 1
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
