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

ActiveRecord::Schema[7.0].define(version: 2022_12_12_194911) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "applications", force: :cascade do |t|
    t.string "confirmation_status"
    t.string "price"
    t.string "pickup_point"
    t.string "drop_point"
    t.datetime "pickup_datetime"
    t.bigint "user_id", null: false
    t.bigint "car_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
    t.string "city"
    t.string "comune"
    t.float "lat"
    t.float "long"
    t.float "lat2"
    t.float "long2"
    t.index ["car_id"], name: "index_applications_on_car_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "status"
    t.bigint "user_id", null: false
    t.bigint "car_id", null: false
    t.bigint "review_id"
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

  create_table "offers", force: :cascade do |t|
    t.integer "price"
    t.string "status"
    t.bigint "application_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["application_id"], name: "index_offers_on_application_id"
    t.index ["user_id"], name: "index_offers_on_user_id"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "applications", "cars"
  add_foreign_key "applications", "users"
  add_foreign_key "bookings", "applications"
  add_foreign_key "bookings", "cars"
  add_foreign_key "bookings", "reviews"
  add_foreign_key "bookings", "users"
  add_foreign_key "cars", "users"
  add_foreign_key "offers", "applications"
  add_foreign_key "offers", "users"
  add_foreign_key "reviews", "users"
end
