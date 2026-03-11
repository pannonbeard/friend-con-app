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

ActiveRecord::Schema[8.1].define(version: 2026_03_11_002120) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "day"
    t.text "description"
    t.integer "event_length"
    t.string "game_type"
    t.bigint "gaming_year_id", null: false
    t.text "gm_needs"
    t.integer "seats_available"
    t.datetime "start_time"
    t.text "supplies_needed"
    t.string "system_name"
    t.string "table"
    t.string "title"
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.boolean "virtual"
    t.text "willing_slots"
    t.index ["gaming_year_id"], name: "index_events_on_gaming_year_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "gaming_year_libraries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "gaming_year_id", null: false
    t.datetime "updated_at", null: false
    t.index ["gaming_year_id"], name: "index_gaming_year_libraries_on_gaming_year_id"
  end

  create_table "gaming_years", force: :cascade do |t|
    t.boolean "active"
    t.datetime "created_at", null: false
    t.date "end_date"
    t.boolean "seating_open", default: false
    t.text "signup_key"
    t.date "start_date"
    t.datetime "updated_at", null: false
    t.integer "year"
  end

  create_table "library_games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "game_type"
    t.bigint "gaming_year_library_id", null: false
    t.integer "player_count"
    t.string "publisher"
    t.text "supplies_needed"
    t.string "title"
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["gaming_year_library_id"], name: "index_library_games_on_gaming_year_library_id"
    t.index ["user_id"], name: "index_library_games_on_user_id"
  end

  create_table "notices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "one_time_logins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "expires_at"
    t.string "token"
    t.datetime "updated_at", null: false
    t.boolean "used", default: false
    t.bigint "user_id", null: false
    t.string "uuid"
    t.index ["user_id"], name: "index_one_time_logins_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "event_id", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["event_id"], name: "index_seats_on_event_id"
    t.index ["user_id"], name: "index_seats_on_user_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "ip_address"
    t.datetime "updated_at", null: false
    t.string "user_agent"
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "user_gaming_years", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "gaming_year_id", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["gaming_year_id"], name: "index_user_gaming_years_on_gaming_year_id"
    t.index ["user_id"], name: "index_user_gaming_years_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "role_id", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "attending_virtually", default: false
    t.datetime "created_at", null: false
    t.string "email", default: "", null: false
    t.string "name"
    t.string "password_digest", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "reset_password_sent_at"
    t.string "reset_password_token"
    t.string "shirt_size"
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "events", "gaming_years"
  add_foreign_key "events", "users"
  add_foreign_key "gaming_year_libraries", "gaming_years"
  add_foreign_key "library_games", "gaming_year_libraries"
  add_foreign_key "library_games", "users"
  add_foreign_key "one_time_logins", "users"
  add_foreign_key "seats", "events"
  add_foreign_key "seats", "users"
  add_foreign_key "sessions", "users"
  add_foreign_key "user_gaming_years", "gaming_years"
  add_foreign_key "user_gaming_years", "users"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
end
