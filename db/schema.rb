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

ActiveRecord::Schema.define(version: 2020_06_25_131716) do

  create_table "hotel_room_translations", force: :cascade do |t|
    t.integer "hotel_room_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.index ["hotel_room_id"], name: "index_hotel_room_translations_on_hotel_room_id"
    t.index ["locale"], name: "index_hotel_room_translations_on_locale"
  end

  create_table "hotel_rooms", force: :cascade do |t|
    t.integer "hotel_id"
    t.integer "room_type_id"
    t.integer "area"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
  end

  create_table "hotel_translations", force: :cascade do |t|
    t.integer "hotel_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.text "short_info"
    t.text "hotel_info"
    t.index ["hotel_id"], name: "index_hotel_translations_on_hotel_id"
    t.index ["locale"], name: "index_hotel_translations_on_locale"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.text "short_info"
    t.text "hotel_info"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "room_type_translations", force: :cascade do |t|
    t.integer "room_type_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["locale"], name: "index_room_type_translations_on_locale"
    t.index ["room_type_id"], name: "index_room_type_translations_on_room_type_id"
  end

  create_table "room_types", force: :cascade do |t|
    t.string "name"
  end

end