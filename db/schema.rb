# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140520204321) do

  create_table "file_translation_counts", id: false, force: true do |t|
    t.string   "file_name"
    t.string   "language"
    t.integer  "count",      default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "file_translation_counts", ["file_name", "language"], name: "index_file_translation_counts_on_file_name_and_language", unique: true

  create_table "languages", force: true do |t|
    t.string   "abbreviation"
    t.string   "full"
    t.string   "flag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
