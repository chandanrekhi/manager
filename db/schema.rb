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

ActiveRecord::Schema.define(:version => 20120724123716) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_verticals", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "vertical_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employee_verticals", ["employee_id"], :name => "index_employee_verticals_on_employee_id"
  add_index "employee_verticals", ["vertical_id"], :name => "index_employee_verticals_on_vertical_id"

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vertical_id"
  end

  create_table "verticals", :force => true do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "verticals", ["company_id"], :name => "index_verticals_on_company_id"

end
