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

ActiveRecord::Schema.define(version: 20140623054946) do

  create_table "bootsy_image_galleries", force: true do |t|
    t.integer  "bootsy_resource_id"
    t.string   "bootsy_resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: true do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_templates", force: true do |t|
    t.text     "template"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "episodeguests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "episode_id"
    t.integer  "user_id"
  end

  create_table "episodehosts", force: true do |t|
    t.integer  "episode_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "episodes", force: true do |t|
    t.string   "title"
    t.integer  "number"
    t.integer  "part"
    t.text     "description"
    t.text     "notes"
    t.string   "media"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "show_id"
    t.string   "slug"
    t.string   "subtitle"
    t.string   "uploaded_image"
    t.boolean  "live",           default: false
    t.boolean  "preview",        default: false
    t.date     "published_on"
  end

  add_index "episodes", ["published_on"], name: "index_episodes_on_published_on"

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "itunescategories", force: true do |t|
    t.string   "category"
    t.string   "subcategory"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rss_feed_shows", force: true do |t|
    t.integer  "show_id"
    t.integer  "rss_feed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rss_feeds", force: true do |t|
    t.string   "name"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "description"
    t.string   "language"
    t.string   "copyright"
    t.integer  "owner_id"
    t.integer  "itunescategory_id"
    t.string   "itunesauthor"
    t.string   "uploaded_image"
  end

  add_index "rss_feeds", ["slug"], name: "index_rss_feeds_on_slug", unique: true

  create_table "show_rsses", force: true do |t|
    t.integer  "show_id"
    t.integer  "rss_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "showhosts", force: true do |t|
    t.integer  "show_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shows", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uploaded_image"
    t.string   "slug"
    t.boolean  "retired"
    t.string   "language"
    t.string   "copyright"
    t.integer  "owner_id"
    t.string   "remote_image"
    t.integer  "itunescategory_id"
    t.string   "itunesauthor"
  end

  create_table "shows_users", force: true do |t|
    t.integer  "show_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "name"
    t.string   "bio"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  default: false
    t.string   "slug"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count"
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true

end
