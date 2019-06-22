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

ActiveRecord::Schema.define(version: 2019_06_21_200811) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bixe_sends_tasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "bixe_id"
    t.integer "index"
    t.boolean "is_valid"
    t.string "feedback"
    t.decimal "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bixe_id"], name: "index_bixe_sends_tasks_on_bixe_id"
    t.index ["task_id", "bixe_id"], name: "index_bixe_sends_tasks_on_task_id_and_bixe_id"
    t.index ["task_id"], name: "index_bixe_sends_tasks_on_task_id"
  end

  create_table "bixes", force: :cascade do |t|
    t.string "name"
    t.string "telephone"
    t.boolean "tutor"
    t.boolean "is_valid"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "team_id"
    t.index ["course_id"], name: "index_bixes_on_course_id"
    t.index ["team_id"], name: "index_bixes_on_team_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.boolean "sendable"
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
