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

ActiveRecord::Schema.define(version: 2019_02_06_142837) do

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.integer "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.integer "user_id"
    t.integer "gossip_id"
    t.integer "comments_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comments_id"], name: "index_comments_on_comments_id"
    t.index ["gossip_id"], name: "index_comments_on_gossip_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "gossips", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "date"
    t.integer "user_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_gossips_on_tag_id"
    t.index ["user_id"], name: "index_gossips_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "gossip_id"
    t.integer "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_likes_on_comment_id"
    t.index ["gossip_id"], name: "index_likes_on_gossip_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "private_messages", force: :cascade do |t|
    t.integer "user_id"
    t.text "content"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_private_messages_on_user_id"
  end

  create_table "private_messages_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "private_message_id", null: false
    t.index ["private_message_id", "user_id"], name: "index_private_messages_users_on_private_message_id_and_user_id"
    t.index ["user_id", "private_message_id"], name: "index_private_messages_users_on_user_id_and_private_message_id"
    t.index ["user_id"], name: "index_private_messages_users_on_user_id_and_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.integer "gossip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gossip_id"], name: "index_tags_on_gossip_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.string "email"
    t.integer "age"
    t.integer "citie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["citie_id"], name: "index_users_on_citie_id"
  end

end
