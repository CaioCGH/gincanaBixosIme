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

ActiveRecord::Schema.define(version: 2019_05_15_053434) do

  create_table "bixe_has_users", force: :cascade do |t|
    t.integer "bixe_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bixe_id", "user_id"], name: "index_bixe_has_users_on_bixe_id_and_user_id", unique: true
    t.index ["bixe_id"], name: "index_bixe_has_users_on_bixe_id"
    t.index ["user_id"], name: "index_bixe_has_users_on_user_id"
  end

  create_table "bixes", force: :cascade do |t|
    t.string "name"
    t.string "telephone"
    t.string "course"
    t.boolean "tutor"
    t.string "sports"
    t.boolean "is_valid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profile_has_services", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id", "service_id"], name: "index_profile_has_services_on_profile_id_and_service_id", unique: true
    t.index ["profile_id"], name: "index_profile_has_services_on_profile_id"
    t.index ["service_id"], name: "index_profile_has_services_on_service_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "profile_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "scoring_type"
    t.string "task_type"
    t.boolean "sendable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.decimal "score"
    t.decimal "placement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_has_profiles", force: :cascade do |t|
    t.integer "user_id"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_user_has_profiles_on_profile_id"
    t.index ["user_id", "profile_id"], name: "index_user_has_profiles_on_user_id_and_profile_id", unique: true
    t.index ["user_id"], name: "index_user_has_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
