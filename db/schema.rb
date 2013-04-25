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

ActiveRecord::Schema.define(:version => 20130425175754) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "groupon_links", :force => true do |t|
    t.integer  "groupon_id"
    t.integer  "cart_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "quantity",   :default => 1
    t.integer  "order_id"
  end

  create_table "groupons", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.decimal  "price",          :precision => 10, :scale => 0
    t.decimal  "original_price", :precision => 10, :scale => 0
    t.datetime "created_at",                                                   :null => false
    t.datetime "updated_at",                                                   :null => false
    t.integer  "stock",                                         :default => 1
    t.integer  "duration",                                      :default => 1
  end

  create_table "kindeditor_assets", :force => true do |t|
    t.string   "asset"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "line_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "quantity",   :default => 1
    t.integer  "order_id"
  end

  create_table "orders", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "email"
    t.string   "pay_type"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.integer  "user_id"
    t.string   "status",     :default => "In Process"
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price",       :precision => 10, :scale => 2
    t.datetime "created_at",                                                :null => false
    t.datetime "updated_at",                                                :null => false
    t.integer  "stock",                                      :default => 1
    t.integer  "category_id",                                :default => 1
    t.string   "kindeditor"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "session_token"
    t.boolean  "admin",           :default => false
    t.string   "gender"
    t.integer  "age"
    t.string   "bio"
    t.string   "phone_number"
    t.string   "address"
    t.string   "post_code"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["session_token"], :name => "index_users_on_session_token"

end
