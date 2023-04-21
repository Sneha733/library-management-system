# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_21_092807) do
  create_table "borrow_records", force: :cascade do |t|
    t.integer "borrowing_id"
    t.integer "stud_id"
    t.integer "library_id"
    t.date "borrow_date"
    t.date "return_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["borrowing_id"], name: "index_borrow_records_on_borrowing_id"
    t.index ["library_id"], name: "index_borrow_records_on_library_id"
    t.index ["stud_id"], name: "index_borrow_records_on_stud_id"
  end

  create_table "borrowing_records", force: :cascade do |t|
    t.integer "library_id", null: false
    t.integer "stud_id", null: false
    t.date "borrow_date"
    t.date "return_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_borrowing_records_on_library_id"
    t.index ["stud_id"], name: "index_borrowing_records_on_stud_id"
  end

  create_table "borrowings", force: :cascade do |t|
    t.integer "book_id"
    t.integer "student_id"
    t.datetime "borrowed_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "borrows", force: :cascade do |t|
    t.integer "book_id"
    t.integer "student_address"
    t.datetime "borrowed_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "returned", default: false
  end

  create_table "create_borrow_records", force: :cascade do |t|
    t.integer "borrowing_id"
    t.integer "stud_id"
    t.integer "library_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "create_borrowing_records", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libraries", force: :cascade do |t|
    t.string "book_name"
    t.string "Author_name"
    t.string "brief_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "extended_description"
    t.integer "library_id"
    t.index ["library_id"], name: "index_libraries_on_library_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studs", force: :cascade do |t|
    t.string "stud_name"
    t.string "stud_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stud_id"
    t.index ["stud_id"], name: "index_studs_on_stud_id"
  end

  add_foreign_key "borrowing_records", "libraries"
  add_foreign_key "borrowing_records", "studs"
end
