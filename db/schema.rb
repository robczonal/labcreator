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

ActiveRecord::Schema.define(:version => 20120711153822) do

  create_table "analyses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.string   "type"
    t.integer  "procedurex_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "equipment", ["procedurex_id"], :name => "index_equipment_on_procedurex_id"

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

  create_table "testxes", :force => true do |t|
    t.string   "name"
    t.integer  "analysis_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "testxes", ["analysis_id"], :name => "index_testxes_on_analysis_id"

end
