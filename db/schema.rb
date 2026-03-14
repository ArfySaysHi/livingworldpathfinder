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

ActiveRecord::Schema[8.0].define(version: 2026_03_14_132510) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "character_classes", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "class_entry_id", null: false
    t.integer "level", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_classes_on_character_id"
    t.index ["class_entry_id"], name: "index_character_classes_on_class_entry_id"
  end

  create_table "character_feats", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "feat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_feats_on_character_id"
    t.index ["feat_id"], name: "index_character_feats_on_feat_id"
  end

  create_table "character_statblocks", force: :cascade do |t|
    t.integer "str", default: 10
    t.integer "dex", default: 10
    t.integer "con", default: 10
    t.integer "int", default: 10
    t.integer "wis", default: 10
    t.integer "cha", default: 10
    t.bigint "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_statblocks_on_character_id"
  end

  create_table "character_traits", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "trait_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_traits_on_character_id"
    t.index ["trait_id"], name: "index_character_traits_on_trait_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name", null: false
    t.string "deity", default: ""
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "class_entries", force: :cascade do |t|
    t.string "name", null: false
    t.integer "hit_die", default: 10
    t.integer "skills_per_level", default: 4
    t.integer "fort_save", default: 0
    t.integer "ref_save", default: 0
    t.integer "will_save", default: 0
    t.integer "bab", default: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feats", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traits", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "trait_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "character_classes", "characters"
  add_foreign_key "character_classes", "class_entries"
  add_foreign_key "character_feats", "characters"
  add_foreign_key "character_feats", "feats"
  add_foreign_key "character_statblocks", "characters"
  add_foreign_key "character_traits", "characters"
  add_foreign_key "character_traits", "traits"
  add_foreign_key "characters", "users"
end
