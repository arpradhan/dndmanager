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

ActiveRecord::Schema.define(version: 2021_02_04_203932) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "race_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "key"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "languages_races", force: :cascade do |t|
    t.integer "race_id", null: false
    t.integer "language_id", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "key"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "asi_str", default: 0
    t.integer "asi_dex", default: 0
    t.integer "asi_con", default: 0
    t.integer "asi_int", default: 0
    t.integer "asi_wis", default: 0
    t.integer "asi_cha", default: 0
    t.string "size"
    t.integer "speed"
  end

  create_table "subraces", force: :cascade do |t|
    t.string "key"
    t.string "name"
    t.integer "race_id", null: false
    t.integer "asi_str", default: 0
    t.integer "asi_dex", default: 0
    t.integer "asi_con", default: 0
    t.integer "asi_int", default: 0
    t.integer "asi_wis", default: 0
    t.integer "asi_cha", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["race_id"], name: "index_subraces_on_race_id"
  end

  add_foreign_key "characters", "races"
  add_foreign_key "subraces", "races"
end
