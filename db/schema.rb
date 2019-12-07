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

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
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
  add_foreign_key "taggings", "tags"
  add_foreign_key "verbs", "groups"
  add_foreign_key "verbs", "rules"
end
