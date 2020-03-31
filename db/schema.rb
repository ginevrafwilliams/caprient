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

ActiveRecord::Schema.define(version: 2020_03_30_205150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.string "date"
    t.string "writer"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brandeds", force: :cascade do |t|
    t.string "title"
    t.string "year"
    t.string "direction"
    t.string "client"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "youtube"
    t.string "youtube2"
    t.string "youtube3"
    t.string "youtube4"
    t.string "youtube5"
    t.string "youtube6"
    t.string "creativity"
    t.string "youtube7"
  end

  create_table "letsencrypt_certificates", force: :cascade do |t|
    t.string "domain"
    t.text "certificate"
    t.text "intermediaries"
    t.text "key"
    t.datetime "expires_at"
    t.datetime "renew_after"
    t.string "verification_path"
    t.string "verification_string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["domain"], name: "index_letsencrypt_certificates_on_domain"
    t.index ["renew_after"], name: "index_letsencrypt_certificates_on_renew_after"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "photo"
    t.string "year"
    t.string "direction"
    t.string "coproduction"
    t.string "distribution"
    t.text "story"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "coproduction2"
    t.string "coproduction3"
    t.string "coproduction4"
    t.string "coproduction5"
    t.string "youtube"
    t.string "youtube2"
    t.string "youtube3"
    t.string "youtube4"
    t.string "youtube5"
    t.string "youtube6"
    t.string "youtube7"
  end

  create_table "reports", force: :cascade do |t|
    t.string "title"
    t.string "date"
    t.string "newspaper"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
