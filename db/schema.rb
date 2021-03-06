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

ActiveRecord::Schema.define(version: 20170902225417) do

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.string "code"
  end

  create_table "flights", force: :cascade do |t|
    t.integer "departure_id"
    t.integer "arrival_id"
    t.datetime "departure_time"
    t.datetime "arrival_time"
    t.integer "ticket_id"
    t.index ["arrival_id"], name: "index_flights_on_arrival_id"
    t.index ["departure_id"], name: "index_flights_on_departure_id"
    t.index ["ticket_id"], name: "index_flights_on_ticket_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "passanger_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["passanger_id"], name: "index_tickets_on_passanger_id"
  end

end
