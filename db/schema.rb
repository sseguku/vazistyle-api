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

ActiveRecord::Schema.define(version: 20190116121908) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "organizer"
    t.datetime "event_date"
    t.integer "duration"
    t.string "location"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "product_type"
    t.text "description"
    t.string "size"
    t.string "event"
    t.string "club_status"
    t.string "design"
    t.decimal "price"
    t.string "color"
    t.string "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "phone_number"
    t.string "email"
    t.string "password"
    t.string "club_status"
    t.string "location"
    t.string "access_level"
    t.binary "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
