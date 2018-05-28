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

ActiveRecord::Schema.define(version: 20180526191034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adults", force: :cascade do |t|
    t.string "adult_title"
    t.string "link"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "article"
    t.string "content"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "current_weight"
    t.integer "goal_weight"
    t.string "nutrition_goals"
    t.string "stretch_goals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "strength_goals"
    t.string "cardio_goals"
    t.string "password_digest"
    t.string "email"
    t.boolean "admin"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "workout_type"
    t.string "exercises"
    t.string "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_workouts_on_user_id"
  end

  add_foreign_key "blogs", "users"
  add_foreign_key "workouts", "users"
end
