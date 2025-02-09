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

ActiveRecord::Schema[7.2].define(version: 2025_02_09_134130) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "care_periods", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "period_type"
    t.bigint "plant_id", null: false
    t.index ["plant_id"], name: "index_care_periods_on_plant_id"
  end

  create_table "growth_conditions", force: :cascade do |t|
    t.bigint "plant_id", null: false
    t.string "light"
    t.string "soil"
    t.string "hardiness_zone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_growth_conditions_on_plant_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "search_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

  create_table "propagation_methods", force: :cascade do |t|
    t.bigint "plant_id", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_propagation_methods_on_plant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "profile_image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.datetime "remember_created_at"
    t.string "firebase_uid"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "users_plants", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "plant_id"
    t.string "firebase_uid"
    t.index ["firebase_uid"], name: "index_users_plants_on_firebase_uid"
  end

  add_foreign_key "care_periods", "plants"
  add_foreign_key "growth_conditions", "plants"
  add_foreign_key "propagation_methods", "plants"
end
