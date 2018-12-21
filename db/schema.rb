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

ActiveRecord::Schema.define(version: 20170107051134) do

  create_table "comments", force: :cascade do |t|
    t.integer  "course_id",            limit: 4
    t.integer  "user_id",              limit: 4
    t.integer  "item_one",             limit: 4
    t.integer  "item_two",             limit: 4
    t.integer  "item_three",           limit: 4
    t.integer  "item_four",            limit: 4
    t.integer  "item_five",            limit: 4
    t.integer  "item_six",             limit: 4
    t.integer  "item_seven",           limit: 4
    t.integer  "item_eight",           limit: 4
    t.integer  "item_nine",            limit: 4
    t.integer  "item_ten",             limit: 4
    t.integer  "item_eleven",          limit: 4
    t.integer  "item_twelve",          limit: 4
    t.integer  "item_thirteen",        limit: 4
    t.integer  "item_fourteen",        limit: 4
    t.integer  "item_fifteen",         limit: 4
    t.integer  "item_sixteen",         limit: 4
    t.integer  "item_seventeen",       limit: 4
    t.text     "comment_advantage",    limit: 65535
    t.text     "comment_disadvantage", limit: 65535
    t.boolean  "commented",                          default: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "comments", ["course_id"], name: "index_comments_on_course_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.string   "course_code",         limit: 255
    t.string   "course_type",         limit: 255
    t.string   "teaching_type",       limit: 255
    t.string   "exam_type",           limit: 255
    t.string   "credit",              limit: 255
    t.integer  "limit_num",           limit: 4
    t.integer  "student_num",         limit: 4,     default: 0
    t.string   "class_room",          limit: 255
    t.string   "course_time",         limit: 255
    t.string   "course_week",         limit: 255
    t.string   "course_difficulty",   limit: 255
    t.string   "course_suit",         limit: 255
    t.string   "course_score",        limit: 255
    t.text     "course_outline",      limit: 65535
    t.text     "course_exam_details", limit: 65535
    t.text     "course_chapter",      limit: 65535
    t.string   "course_live",         limit: 255
    t.string   "course_homework",     limit: 255
    t.string   "course_teamwork",     limit: 255
    t.integer  "semester_id",         limit: 4
    t.integer  "teacher_id",          limit: 4
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.boolean  "open",                              default: false
  end

  add_index "courses", ["semester_id"], name: "index_courses_on_semester_id", using: :btree

  create_table "grades", force: :cascade do |t|
    t.integer  "course_id",  limit: 4
    t.integer  "user_id",    limit: 4
    t.integer  "grade",      limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.boolean  "open",                 default: false
  end

  add_index "grades", ["course_id"], name: "index_grades_on_course_id", using: :btree
  add_index "grades", ["user_id"], name: "index_grades_on_user_id", using: :btree

  create_table "notices", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "text",       limit: 65535
    t.string   "department", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.string   "info",       limit: 255,                 null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "is_open",                default: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "num",             limit: 255
    t.string   "major",           limit: 255
    t.string   "department",      limit: 255
    t.string   "password_digest", limit: 255
    t.string   "remember_digest", limit: 255
    t.boolean  "admin",                       default: false
    t.boolean  "teacher",                     default: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
