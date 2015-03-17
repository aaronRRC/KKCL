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

ActiveRecord::Schema.define(version: 20150317022033) do

  create_table "customers", id: false, force: true do |t|
    t.integer  "id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "postal_code"
    t.string   "email"
    t.integer  "province_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lineitems", id: false, force: true do |t|
    t.integer  "id"
    t.integer  "qty"
    t.decimal  "price"
    t.integer  "product_id"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", id: false, force: true do |t|
    t.integer  "id"
    t.string   "status"
    t.decimal  "pst_rate"
    t.decimal  "gst_rate"
    t.decimal  "hst_rate"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", id: false, force: true do |t|
    t.integer  "id"
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.integer  "stock_qty"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provinces", id: false, force: true do |t|
    t.integer  "id"
    t.string   "name"
    t.decimal  "pst"
    t.decimal  "gst"
    t.decimal  "hst"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
