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

ActiveRecord::Schema.define(version: 2018_06_15_103944) do

  create_table "grilles", force: :cascade do |t|
    t.string "num1"
    t.string "num2"
    t.string "num3"
    t.string "num4"
    t.string "num5"
    t.string "exp1"
    t.string "exp2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
    t.decimal "gain"
    t.integer "user_id"
    t.integer "tirage_id"
  end

  create_table "reports", force: :cascade do |t|
    t.integer "r_rank1"
    t.integer "r_rank2"
    t.integer "r_rank3"
    t.integer "r_rank4"
    t.integer "r_rank5"
    t.integer "r_rank6"
    t.integer "r_rank7"
    t.integer "r_rank8"
    t.integer "r_rank9"
    t.integer "r_rank10"
    t.integer "r_rank11"
    t.integer "r_rank12"
    t.integer "r_rank13"
    t.integer "r_rank14"
    t.integer "r_rank15"
    t.integer "r_rank16"
    t.integer "r_rank17"
    t.integer "r_rank18"
  end

  create_table "retraits", force: :cascade do |t|
    t.decimal "pre_balance"
    t.decimal "montant_retrai"
    t.integer "users_id"
    t.index ["users_id"], name: "index_retraits_on_users_id"
  end

  create_table "tirages", force: :cascade do |t|
    t.string "t_num1"
    t.string "t_num2"
    t.string "t_num3"
    t.string "t_num4"
    t.string "t_num5"
    t.string "t_exp1"
    t.string "t_exp2"
    t.date "date_tirage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nb_jouer"
    t.integer "rank1"
    t.integer "rank2"
    t.integer "rank3"
    t.integer "rank4"
    t.integer "rank5"
    t.integer "rank6"
    t.integer "rank7"
    t.integer "rank8"
    t.integer "rank9"
    t.integer "rank10"
    t.integer "rank11"
    t.integer "rank12"
    t.integer "rank13"
    t.integer "rank14"
    t.integer "rank15"
    t.integer "rank16"
    t.integer "rank17"
    t.integer "rank18"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fullname"
    t.string "phone_number"
    t.integer "jouer_grilles"
    t.integer "max_grilles"
    t.integer "gain_grilles"
    t.decimal "balance"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
