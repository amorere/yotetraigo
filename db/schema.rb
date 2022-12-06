# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_06_153912) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string "confirmation_status"
    t.string "price"
    t.bigint "user_id", null: false
    t.bigint "car_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_applications_on_car_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "pickup_point"
    t.string "drop_point"
    t.datetime "pickup_datetime"
    t.string "status"
    t.bigint "user_id", null: false
    t.bigint "car_id", null: false
    t.bigint "review_id", null: false
    t.bigint "application_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["application_id"], name: "index_bookings_on_application_id"
    t.index ["car_id"], name: "index_bookings_on_car_id"
    t.index ["review_id"], name: "index_bookings_on_review_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.string "color"
    t.string "plate"
    t.boolean "insurance_other_drivers"
    t.string "transmission"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "comment"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.datetime "date_of_birth"
    t.datetime "driver_license_expiry"
    t.string "phone_number"
    t.boolean "is_driver", default: false
    t.string "dni"
    t.boolean "insurance", default: false
    t.string "driver_license_dni"
    t.string "criminal_record"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "applications", "cars"
  add_foreign_key "applications", "users"
  add_foreign_key "bookings", "applications"
  add_foreign_key "bookings", "cars"
  add_foreign_key "bookings", "reviews"
  add_foreign_key "bookings", "users"
  add_foreign_key "cars", "users"
  add_foreign_key "reviews", "users"
end
