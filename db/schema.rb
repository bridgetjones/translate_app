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

ActiveRecord::Schema.define(version: 20170520003207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_promotions", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "promotion_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.datetime "sent_time"
    t.index ["customer_id"], name: "index_customer_promotions_on_customer_id", using: :btree
    t.index ["promotion_id"], name: "index_customer_promotions_on_promotion_id", using: :btree
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "language"
    t.string   "ph_number"
    t.string   "email"
    t.integer  "shop_owner_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["shop_owner_id"], name: "index_customers_on_shop_owner_id", using: :btree
  end

  create_table "promotions", force: :cascade do |t|
    t.integer  "shop_owner_id"
    t.string   "english_promo"
    t.text     "body"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.datetime "send_time"
    t.text     "translated_text"
    t.datetime "sent_time"
    t.index ["shop_owner_id"], name: "index_promotions_on_shop_owner_id", using: :btree
  end

  create_table "shop_owners", force: :cascade do |t|
    t.string   "name"
    t.string   "shop_name"
    t.string   "address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.text     "original_text"
    t.string   "email"
  end

  add_foreign_key "customers", "shop_owners"
  add_foreign_key "promotions", "shop_owners"
end
