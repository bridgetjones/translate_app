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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170513003426) do
=======
ActiveRecord::Schema.define(version: 20170512233133) do
>>>>>>> 5e30305838df3a32a09de51606ac6cdb0abc179f

  create_table "shop_owners", force: :cascade do |t|
    t.string   "name"
    t.string   "shop_name"
    t.string   "address"
    t.string   "user_name"
<<<<<<< HEAD
    t.string   "password"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "original_text"
=======
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
>>>>>>> 5e30305838df3a32a09de51606ac6cdb0abc179f
  end

end
