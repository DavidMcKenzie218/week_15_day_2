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

ActiveRecord::Schema.define(version: 20161025185616) do

  create_table "armouries", force: :cascade do |t|
    t.string   "name"
    t.integer  "hero_id"
    t.integer  "weapon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "armouries", ["hero_id"], name: "index_armouries_on_hero_id"
  add_index "armouries", ["weapon_id"], name: "index_armouries_on_weapon_id"

  create_table "films", force: :cascade do |t|
    t.string   "name"
    t.integer  "hero_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "films", ["hero_id"], name: "index_films_on_hero_id"

  create_table "heros", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
