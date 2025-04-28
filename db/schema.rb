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

ActiveRecord::Schema[7.0].define(version: 2025_04_28_001011) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "seats_available"
    t.bigint "user_id", null: false
    t.text "supplies_needed"
    t.boolean "virtual"
    t.string "table"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "day"
    t.text "willing_slots"
    t.bigint "gaming_year_id", null: false
    t.string "game_type"
    t.string "system_name"
    t.text "gm_needs"
    t.integer "event_length"
    t.datetime "start_time"
    t.index ["gaming_year_id"], name: "index_events_on_gaming_year_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "gaming_year_libraries", force: :cascade do |t|
    t.bigint "gaming_year_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gaming_year_id"], name: "index_gaming_year_libraries_on_gaming_year_id"
  end

  create_table "gaming_years", force: :cascade do |t|
    t.integer "year"
    t.text "signup_key"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "seating_open", default: false
    t.date "start_date"
    t.date "end_date"
  end

  create_table "library_games", force: :cascade do |t|
    t.string "title"
    t.string "publisher"
    t.integer "player_count"
    t.string "game_type"
    t.text "supplies_needed"
    t.bigint "user_id", null: false
    t.bigint "gaming_year_library_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gaming_year_library_id"], name: "index_library_games_on_gaming_year_library_id"
    t.index ["user_id"], name: "index_library_games_on_user_id"
  end

  create_table "notices", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_seats_on_event_id"
    t.index ["user_id"], name: "index_seats_on_user_id"
  end

  create_table "user_gaming_years", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "gaming_year_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gaming_year_id"], name: "index_user_gaming_years_on_gaming_year_id"
    t.index ["user_id"], name: "index_user_gaming_years_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "attending_virtually", default: false
    t.string "shirt_size"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "events", "gaming_years"
  add_foreign_key "events", "users"
  add_foreign_key "gaming_year_libraries", "gaming_years"
  add_foreign_key "library_games", "gaming_year_libraries"
  add_foreign_key "library_games", "users"
  add_foreign_key "seats", "events"
  add_foreign_key "seats", "users"
  add_foreign_key "user_gaming_years", "gaming_years"
  add_foreign_key "user_gaming_years", "users"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
end
