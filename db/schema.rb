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

ActiveRecord::Schema.define(version: 20180507202800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.integer "hunger"
    t.integer "cravings"
    t.integer "satiety"
    t.integer "energy_level"
    t.integer "well_being"
    t.integer "processed_carbs"
    t.boolean "stress_reduction_am"
    t.boolean "stress_reduction_pm"
    t.boolean "after_meal_walk_am"
    t.boolean "after_meal_walk_pm"
    t.text "joyful_movement"
    t.text "presleep_routine"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_days_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "username"
    t.text "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weeks", force: :cascade do |t|
    t.float "weight"
    t.float "waist"
    t.float "body_fat"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_weeks_on_user_id"
  end

  add_foreign_key "days", "users"
  add_foreign_key "weeks", "users"
end
