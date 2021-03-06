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

ActiveRecord::Schema.define(version: 2019_03_27_013856) do

  create_table "group_members", force: :cascade do |t|
    t.integer "travel_group_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["travel_group_id"], name: "index_group_members_on_travel_group_id"
    t.index ["user_id"], name: "index_group_members_on_user_id"
  end

  create_table "splits", force: :cascade do |t|
    t.float "percent_owed"
    t.float "amount_owed"
    t.date "date_paid"
    t.integer "transactions_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "payee_id"
    t.integer "payor_id"
    t.index ["payee_id"], name: "index_splits_on_payee_id"
    t.index ["payor_id"], name: "index_splits_on_payor_id"
    t.index ["transactions_id"], name: "index_splits_on_transactions_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.date "date_charged"
    t.string "description"
    t.string "currency_type"
    t.float "total_charged"
    t.string "country"
    t.string "expense_type"
    t.integer "travel_groups_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["travel_groups_id"], name: "index_transactions_on_travel_groups_id"
  end

  create_table "travel_groups", force: :cascade do |t|
    t.string "trip_name"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "travel_group_id"
    t.integer "transaction_id"
    t.index ["transaction_id"], name: "index_trips_on_transaction_id"
    t.index ["travel_group_id"], name: "index_trips_on_travel_group_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "base_currency"
    t.float "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token_id"
  end

end
