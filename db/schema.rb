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

ActiveRecord::Schema.define(:version => 20130827075459) do

  create_table "age_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "from_age"
    t.integer  "to_age"
  end

  create_table "costs", :force => true do |t|
    t.string   "description"
    t.integer  "half_term_price"
    t.integer  "full_term_price"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schedules", :force => true do |t|
    t.integer  "course_id"
    t.integer  "venue_id"
    t.integer  "age_group_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.time     "time_start"
    t.time     "time_end"
  end

  create_table "tutors", :force => true do |t|
    t.string   "name"
    t.text     "profile"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "role"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
