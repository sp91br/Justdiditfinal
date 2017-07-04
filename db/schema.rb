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



ActiveRecord::Schema.define(version: 20170704170449) do

  create_table "doers", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


  create_table "doers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.text "title"
    t.text "subtitle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "couse_id"
  end

  create_table "milestones", force: :cascade do |t|
    t.integer "info"
    t.string "url"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "couse_id"
  end

  create_table "steps", force: :cascade do |t|
    t.integer "day"
    t.text "discription"
    t.bigint "target_id"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["target_id"], name: "index_steps_on_target_id"
  end

  create_table "targets", force: :cascade do |t|
    t.string "goal"
    t.integer "days"
    t.bigint "doer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doer_id"], name: "index_targets_on_doer_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "title"
    t.text "subtitle"
    t.integer "info"


    t.text "description"
    t.integer "goal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "status_type"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"

    

    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"

    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "steps", "targets"
  add_foreign_key "targets", "doers"
end
