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

ActiveRecord::Schema.define(version: 2020_04_27_161347) do

  create_table "courses", force: :cascade do |t|
    t.string "description"
    t.string "location"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "breed"
    t.string "category"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_dogs_on_user_id"
  end

  create_table "obstracles", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image_url"
    t.integer "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_obstracles_on_course_id"
  end

  create_table "trainings", force: :cascade do |t|
    t.datetime "date"
    t.string "completed"
    t.float "time"
    t.string "benefit"
    t.integer "course_id", null: false
    t.integer "dog_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_trainings_on_course_id"
    t.index ["dog_id"], name: "index_trainings_on_dog_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "courses", "users"
  add_foreign_key "dogs", "users"
  add_foreign_key "obstracles", "courses"
  add_foreign_key "trainings", "courses"
  add_foreign_key "trainings", "dogs"
end
