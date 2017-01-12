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

ActiveRecord::Schema.define(version: 20161209035855) do

  create_table "conversations", force: :cascade do |t|
    t.integer  "author_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_conversations_on_author_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "conversation_id", null: false
    t.integer  "sender_id",       null: false
    t.integer  "user_id",         null: false
    t.string   "text"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "readings", force: :cascade do |t|
    t.integer  "message_id", null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_readings_on_message_id"
    t.index ["user_id"], name: "index_readings_on_user_id"
  end

  create_table "user_conversations", force: :cascade do |t|
    t.integer  "conversation_id",      null: false
    t.integer  "user_id",              null: false
    t.integer  "last_message_id_seen", null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["conversation_id"], name: "index_user_conversations_on_conversation_id"
    t.index ["last_message_id_seen"], name: "index_user_conversations_on_last_message_id_seen"
    t.index ["user_id"], name: "index_user_conversations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "name",       null: false
    t.integer  "email",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
