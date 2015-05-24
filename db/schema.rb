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

ActiveRecord::Schema.define(:version => 20150524203805) do

  create_table "correct_usages", :force => true do |t|
    t.text     "usage"
    t.integer  "word_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "correct_usages", ["word_id"], :name => "index_correct_usages_on_word_id"

  create_table "correct_words", :force => true do |t|
    t.string   "name",             :default => ""
    t.integer  "word_id",                          :null => false
    t.integer  "word_language_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "correct_words", ["name"], :name => "index_correct_words_on_name"
  add_index "correct_words", ["word_id"], :name => "index_correct_words_on_word_id"
  add_index "correct_words", ["word_language_id"], :name => "index_correct_words_on_word_language_id"

  create_table "notes", :force => true do |t|
    t.text     "notes"
    t.integer  "word_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",   :null => false
    t.string   "encrypted_password",     :default => "",   :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,    :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.boolean  "sex",                    :default => true
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "word_languages", :force => true do |t|
    t.string   "name",          :null => false
    t.string   "language_code", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "word_languages", ["language_code"], :name => "index_word_languages_on_language_code"
  add_index "word_languages", ["name"], :name => "index_word_languages_on_name"

  create_table "word_translations", :force => true do |t|
    t.string   "name"
    t.integer  "word_id",          :null => false
    t.integer  "word_language_id", :null => false
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "words", :force => true do |t|
    t.string   "name",             :default => "", :null => false
    t.integer  "user_id",                          :null => false
    t.integer  "word_language_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "words", ["name"], :name => "index_words_on_name"

  create_table "wrong_usages", :force => true do |t|
    t.text     "usage"
    t.integer  "word_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "wrong_usages", ["word_id"], :name => "index_wrong_usages_on_word_id"

  create_table "wrong_words", :force => true do |t|
    t.string   "name",             :default => ""
    t.integer  "word_id",                          :null => false
    t.integer  "word_language_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "wrong_words", ["name"], :name => "index_wrong_words_on_name"
  add_index "wrong_words", ["word_id"], :name => "index_wrong_words_on_word_id"
  add_index "wrong_words", ["word_language_id"], :name => "index_wrong_words_on_word_language_id"

end
