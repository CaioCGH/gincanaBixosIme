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

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "alias"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newcomer_sends_tasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "newcomer_id"
    t.integer "index"
    t.boolean "is_valid"
    t.string "feedback"
    t.decimal "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["newcomer_id"], name: "index_newcomer_sends_tasks_on_newcomer_id"
    t.index ["task_id", "newcomer_id"], name: "index_newcomer_sends_tasks_on_task_id_and_newcomer_id"
    t.index ["task_id"], name: "index_newcomer_sends_tasks_on_task_id"
  end

  create_table "newcomers", force: :cascade do |t|
    t.string "name"
    t.string "telephone"
    t.boolean "tutor"
    t.boolean "is_valid"
    t.integer "course_id"
    t.integer "user_id"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_newcomers_on_course_id"
    t.index ["team_id"], name: "index_newcomers_on_team_id"
    t.index ["user_id"], name: "index_newcomers_on_user_id"
  end

  create_table "sport_interests_newcomers", force: :cascade do |t|
    t.integer "newcomer_id"
    t.integer "sport_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["newcomer_id", "sport_id"], name: "index_sport_interests_newcomers_on_newcomer_id_and_sport_id", unique: true
    t.index ["newcomer_id"], name: "index_sport_interests_newcomers_on_newcomer_id"
    t.index ["sport_id"], name: "index_sport_interests_newcomers_on_sport_id"
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
