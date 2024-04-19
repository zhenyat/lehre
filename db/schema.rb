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

ActiveRecord::Schema.define(version: 2019_12_07_085507) do

  create_table "conjugations", force: :cascade do |t|
    t.integer "verb_id", null: false
    t.integer "personal_pronoun", limit: 1, default: 0, null: false
    t.string "present_simple", null: false
    t.string "past_simple", null: false
    t.string "present_perfect", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["verb_id"], name: "index_conjugations_on_verb_id"
  end

  create_table "entries", force: :cascade do |t|
    t.integer "pos", limit: 1, default: 6, null: false
    t.integer "art", limit: 1, default: 0
    t.string "de", null: false
    t.string "trxn"
    t.string "pl"
    t.string "en", null: false
    t.string "ru", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "comment"
  end

  create_table "examples", force: :cascade do |t|
    t.integer "verb_id", null: false
    t.string "de", null: false
    t.string "ru"
    t.string "en"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["verb_id"], name: "index_examples_on_verb_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "en", null: false
    t.string "de", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kids", force: :cascade do |t|
    t.integer "person_id", null: false
    t.string "name", null: false
    t.string "nick"
    t.integer "year", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_kids_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "profession"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personal_pronouns", force: :cascade do |t|
    t.string "de", null: false
    t.string "en", null: false
    t.string "ru", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rules", force: :cascade do |t|
    t.string "scheme", null: false
    t.string "assoc"
    t.string "sample"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "samples", force: :cascade do |t|
    t.integer "entry_id", null: false
    t.string "de", null: false
    t.string "en"
    t.string "ru", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entry_id"], name: "index_samples_on_entry_id"
  end

  create_table "verbs", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "rule_id", null: false
    t.string "infinitive", null: false
    t.string "prasens", null: false
    t.string "simple", null: false
    t.string "participle", null: false
    t.string "trxn"
    t.string "ru", null: false
    t.string "en"
    t.integer "aux", limit: 1, default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_verbs_on_group_id"
    t.index ["rule_id"], name: "index_verbs_on_rule_id"
  end

  add_foreign_key "conjugations", "verbs"
  add_foreign_key "examples", "verbs"
  add_foreign_key "kids", "people"
  add_foreign_key "samples", "entries"
  add_foreign_key "verbs", "groups"
  add_foreign_key "verbs", "rules"
end
