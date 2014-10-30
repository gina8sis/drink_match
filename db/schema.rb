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

ActiveRecord::Schema.define(version: 20141030001411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drinks", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "recipe"
    t.string   "color"
    t.integer  "strength"
    t.integer  "risk"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drinks_flavors", id: false, force: true do |t|
    t.integer "drink_id",  null: false
    t.integer "flavor_id", null: false
  end

  create_table "drinks_occasions", id: false, force: true do |t|
    t.integer "drink_id",    null: false
    t.integer "occasion_id", null: false
  end

  create_table "drinks_seasons", id: false, force: true do |t|
    t.integer "drink_id",  null: false
    t.integer "season_id", null: false
  end

  create_table "flavors", force: true do |t|
    t.string   "descriptor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "occasions", force: true do |t|
    t.string   "name"
    t.string   "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasons", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "admin"
    t.string   "password_digest"
    t.string   "twitter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
