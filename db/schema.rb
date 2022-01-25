# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_17_010438) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "buildings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lineforms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.string "line_status"
    t.string "progress"
    t.string "line_carrier"
    t.string "line_plan"
    t.date "hope_to_open"
    t.string "contractor_name"
    t.string "contractor_furigana"
    t.string "postal_code"
    t.string "location_prefectures"
    t.string "location_address"
    t.string "location_property"
    t.string "location_floor"
    t.string "contractor_p_number"
    t.string "manager_surname"
    t.string "manager_name"
    t.string "manager_surname_kana"
    t.string "manager_name_kana"
    t.string "manager_email"
    t.string "manager_number"
    t.string "contractor_relations"
    t.text "confirmation_document"
    t.string "line_others"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.string "status"
    t.string "progress"
    t.string "report_c"
    t.string "report_c_postal"
    t.string "report_c_address"
    t.string "report_c_property"
    t.string "report_c_floor"
    t.string "report_c_number"
    t.string "report_mg"
    t.string "report_mg_email"
    t.string "subject"
    t.string "work_class"
    t.text "work_content"
    t.datetime "working_date"
    t.datetime "working_date_end"
    t.string "work_place"
    t.string "work_place_detail"
    t.string "prime_c"
    t.string "prime_c_postal"
    t.string "prime_c_address"
    t.string "prime_c_property"
    t.string "prime_c_floor"
    t.string "prime_c_number"
    t.string "prime_c_person"
    t.string "others"
    t.text "report_file_1"
    t.text "report_file_2"
    t.text "report_file_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "name_kana"
    t.string "user_type"
    t.string "company"
    t.string "c_postal"
    t.string "c_address"
    t.string "c_p_number"
    t.string "c_building"
    t.string "c_floor"
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
