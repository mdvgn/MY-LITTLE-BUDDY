# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_16_210150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dwarf_skills", force: :cascade do |t|
    t.bigint "dwarf_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dwarf_id"], name: "index_dwarf_skills_on_dwarf_id"
    t.index ["skill_id"], name: "index_dwarf_skills_on_skill_id"
  end

  create_table "dwarves", force: :cascade do |t|
    t.string "nickname"
    t.integer "size"
    t.string "gender"
    t.string "photo"
    t.text "description"
    t.integer "price_per_hour"
    t.string "location"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_dwarves_on_user_id"
  end

  create_table "rents", force: :cascade do |t|
    t.bigint "dwarf_id", null: false
    t.bigint "user_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dwarf_id"], name: "index_rents_on_dwarf_id"
    t.index ["user_id"], name: "index_rents_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "skill"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "dwarf"
    t.integer "age"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "dwarf_skills", "dwarves"
  add_foreign_key "dwarf_skills", "skills"
  add_foreign_key "dwarves", "users"
  add_foreign_key "rents", "dwarves"
  add_foreign_key "rents", "users"
end
