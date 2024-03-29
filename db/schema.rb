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

ActiveRecord::Schema.define(:version => 20120903113134) do

  create_table "admins", :force => true do |t|
    t.string   "email",              :default => "", :null => false
    t.string   "encrypted_password", :default => "", :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "analyses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "analyses_projects", :id => false, :force => true do |t|
    t.integer "project_id"
    t.integer "analysis_id"
  end

  create_table "baskets", :force => true do |t|
    t.integer  "project_id"
    t.integer  "procedurex_id"
    t.integer  "equipment_id"
    t.integer  "quantity"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "baskets", ["equipment_id"], :name => "index_baskets_on_equipment_id"
  add_index "baskets", ["procedurex_id"], :name => "index_baskets_on_procedurex_id"
  add_index "baskets", ["project_id"], :name => "index_baskets_on_project_id"

  create_table "comments", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["project_id"], :name => "index_comments_on_project_id"

  create_table "equipcats", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "equiptype_id"
  end

  create_table "equipment", :force => true do |t|
    t.string   "name"
    t.string   "availability"
    t.float    "height"
    t.float    "width"
    t.float    "depth"
    t.float    "price"
    t.string   "externallink"
    t.string   "picture"
    t.text     "description"
    t.text     "alert"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "equipcat_id"
  end

  create_table "equiptypes", :id => false, :force => true do |t|
    t.string "name"
  end

  create_table "ingredients", :force => true do |t|
    t.text     "notes"
    t.integer  "quantity"
    t.integer  "procedurex_id"
    t.integer  "equipcat_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "unit"
  end

  create_table "procedurexes", :force => true do |t|
    t.string   "name"
    t.string   "astmip"
    t.string   "subtype"
    t.text     "description"
    t.integer  "testx_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "procedurexes", ["testx_id"], :name => "index_procedurexes_on_testx_id"

  create_table "procedurexes_projects", :id => false, :force => true do |t|
    t.integer "procedurex_id"
    t.integer "project_id"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "client"
    t.string   "location"
    t.string   "email"
    t.text     "description"
    t.date     "deadline"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "projects_testxes", :id => false, :force => true do |t|
    t.integer "project_id"
    t.integer "testx_id"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "testxes", :force => true do |t|
    t.string   "name"
    t.integer  "analysis_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "testxes", ["analysis_id"], :name => "index_testxes_on_analysis_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
