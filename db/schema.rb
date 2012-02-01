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

ActiveRecord::Schema.define(:version => 20120131223537) do

  create_table "categories", :force => true do |t|
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "files", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.float    "size"
    t.time     "length"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "keywords", :force => true do |t|
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "podcasts", :force => true do |t|
    t.integer  "keyword_id"
    t.integer  "file_id"
    t.string   "title"
    t.string   "subtitle"
    t.string   "author"
    t.text     "summary"
    t.datetime "pubDate"
    t.string   "explicit"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "podcasts", ["file_id"], :name => "index_podcasts_on_file_id"
  add_index "podcasts", ["keyword_id"], :name => "index_podcasts_on_keyword_id"

  create_table "shows", :force => true do |t|
    t.integer  "categories_id"
    t.integer  "podcast_id"
    t.string   "title"
    t.string   "subtitle"
    t.text     "summary"
    t.text     "description"
    t.string   "owner_name"
    t.string   "owner_email"
    t.string   "language"
    t.string   "copyright"
    t.string   "explicit"
    t.string   "author"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shows", ["categories_id"], :name => "index_shows_on_categories_id"
  add_index "shows", ["podcast_id"], :name => "index_shows_on_podcast_id"

end
