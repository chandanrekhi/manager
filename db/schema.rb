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

ActiveRecord::Schema.define(:version => 20120724150230) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.integer  "vertical_id"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["client_id"], :name => "index_accounts_on_client_id"
  add_index "accounts", ["vertical_id"], :name => "index_accounts_on_vertical_id"

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "technology"
    t.integer  "teamsize"
    t.integer  "won"
    t.date     "startdate"
    t.date     "enddate"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["account_id"], :name => "index_projects_on_account_id"

  create_table "verticals", :force => true do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "verticals", ["company_id"], :name => "index_verticals_on_company_id"

end
