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

ActiveRecord::Schema.define(version: 20170514073639) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "address"
    t.decimal  "heng",                  precision: 10
    t.decimal  "zong",                  precision: 10
    t.integer  "user_id"
    t.string   "factory",    limit: 50
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "components", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "price"
    t.date     "s_time"
    t.date     "e_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "name",       limit: 30
    t.integer  "qishi_id"
    t.integer  "count"
    t.decimal  "price",                 precision: 10
    t.string   "statues",    limit: 30
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.decimal  "price",      precision: 10
    t.string   "logo"
    t.string   "desc"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "qishis", primary_key: "qishi_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "phone"
    t.integer  "order_id"
    t.decimal  "salary",     precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "password"
    t.string   "email"
    t.decimal  "balance",    precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
