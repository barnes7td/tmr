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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130517225431) do

  create_table "details", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fastener_profiles", :force => true do |t|
    t.float    "diameter"
    t.string   "material"
    t.float    "length"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "parts", :force => true do |t|
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "profile_id"
    t.string   "profile_type"
  end

  create_table "rivet_profiles", :force => true do |t|
    t.float    "diameter"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stock_profiles", :force => true do |t|
    t.string   "dimensions"
    t.string   "material"
    t.float    "length"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "transactions", :force => true do |t|
    t.integer  "detail_id"
    t.integer  "part_id"
    t.integer  "quantity"
    t.integer  "ship_loose"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "transactions", ["detail_id"], :name => "index_transactions_on_detail_id"
  add_index "transactions", ["part_id"], :name => "index_transactions_on_part_id"

end
