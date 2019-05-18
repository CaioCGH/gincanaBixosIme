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

ActiveRecord::Schema.define(version: 2019_05_18_001041) do

  create_table "bixes", force: :cascade do |t|
    t.string "name"
    t.string "telephone"
    t.string "course"
    t.boolean "tutor"
    t.boolean "is_valid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "team_id"
    t.index ["team_id"], name: "index_bixes_on_team_id"
  end

  create_table "envios", force: :cascade do |t|
    t.integer "bixe_id"
    t.integer "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bixe_id", "task_id"], name: "index_envios_on_bixe_id_and_task_id", unique: true
    t.index ["bixe_id"], name: "index_envios_on_bixe_id"
    t.index ["task_id"], name: "index_envios_on_task_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "profile_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rel_bixe_sports", force: :cascade do |t|
    t.integer "bixe_id"
    t.integer "sport_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bixe_id", "sport_id"], name: "index_rel_bixe_sports_on_bixe_id_and_sport_id", unique: true
    t.index ["bixe_id"], name: "index_rel_bixe_sports_on_bixe_id"
    t.index ["sport_id"], name: "index_rel_bixe_sports_on_sport_id"
  end

  create_table "rel_prof_users", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_rel_prof_users_on_profile_id"
    t.index ["user_id"], name: "index_rel_prof_users_on_user_id"
    t.index [nil, "user_id"], name: "index_rel_prof_users_on_profile_and_user_id", unique: true
  end

  create_table "rel_ser_profs", force: :cascade do |t|
    t.integer "service_id"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_rel_ser_profs_on_profile_id"
    t.index ["service_id", "profile_id"], name: "index_rel_ser_profs_on_service_id_and_profile_id", unique: true
    t.index ["service_id"], name: "index_rel_ser_profs_on_service_id"
  end

  create_table "rel_user_bixes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "bixe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bixe_id"], name: "index_rel_user_bixes_on_bixe_id"
    t.index ["user_id", "bixe_id"], name: "index_rel_user_bixes_on_user_id_and_bixe_id", unique: true
    t.index ["user_id"], name: "index_rel_user_bixes_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "score_type"
    t.boolean "have_score"
    t.boolean "group"
    t.boolean "send"
    t.integer "max_send"
    t.boolean "have_feedback"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "admin", default: false, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
