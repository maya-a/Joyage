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


ActiveRecord::Schema.define(version: 2019_07_01_084831) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flights", force: :cascade do |t|
    t.bigint "itinerary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["itinerary_id"], name: "index_flights_on_itinerary_id"
  end

  create_table "itineraries", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_itineraries_on_trip_id"
    t.index ["user_id"], name: "index_itineraries_on_user_id"
  end

  create_table "origins", force: :cascade do |t|
<<<<<<< HEAD
    t.integer "airport_id"
    t.string "name"
    t.string "city"
    t.string "country"
    t.string "code"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category"
  end

  create_table "search_origins", force: :cascade do |t|
    t.bigint "origin_id"
    t.bigint "search_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["origin_id"], name: "index_search_origins_on_origin_id"
    t.index ["search_id"], name: "index_search_origins_on_search_id"
=======
    t.float "latitude"
    t.float "longitude"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
>>>>>>> b0bfff1ab122ec26a1c4067f3388ed2b0942d23f
  end

  create_table "searches", force: :cascade do |t|
    t.integer "max_budget"
    t.string "origin"
    t.date "dep_date"
    t.date "ret_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_searches_on_user_id"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "avg_price"
    t.string "destination"
    t.bigint "search_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["search_id"], name: "index_trips_on_search_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "flights", "itineraries"
  add_foreign_key "itineraries", "trips"
  add_foreign_key "itineraries", "users"
  add_foreign_key "search_origins", "origins"
  add_foreign_key "search_origins", "searches"
  add_foreign_key "searches", "users"
  add_foreign_key "trips", "searches"
end
