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

ActiveRecord::Schema.define(version: 20160714121811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "fabmoment_id"
    t.integer  "user_id"
  end

  add_index "comments", ["fabmoment_id"], name: "index_comments_on_fabmoment_id", using: :btree

  create_table "fabmoments", force: :cascade do |t|
    t.string   "title"
    t.text     "desc"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "mo"
    t.text     "settings"
    t.text     "materials"
    t.text     "wentwell"
    t.text     "wentbad"
    t.text     "basedon"
    t.text     "sources"
    t.text     "nexttime"
    t.boolean  "machines_ultimaker_original"
    t.boolean  "machines_ultimaker_original_plus"
    t.boolean  "machines_ultimaker_two"
    t.boolean  "machines_ultimaker_two_plus"
    t.boolean  "machines_lasercutter"
    t.boolean  "machines_vinylcutter"
    t.boolean  "machines_scanner"
    t.boolean  "software_illustrator"
    t.boolean  "software_tinkercad"
    t.boolean  "software_sketchup"
    t.boolean  "software_inkscape"
    t.boolean  "software_blender"
    t.string   "rights"
    t.string   "is_basedon"
    t.boolean  "multiplex_3mm"
    t.boolean  "multiplex_4mm"
    t.boolean  "multiplex_6mm"
    t.boolean  "plexiglas_trans_3mm"
    t.boolean  "plexiglas_trans_5mm"
    t.boolean  "plexiglas_trans_10mm"
    t.boolean  "plexiglas_trans_15mm"
    t.boolean  "plexiglas_white_3mm"
    t.boolean  "plexiglas_white_5mm"
    t.boolean  "plexiglas_blue_3mm"
    t.boolean  "plexiglas_ylw_3mm"
    t.boolean  "plexiglas_grn_trans_3mm"
    t.boolean  "plexiglas_red_trans_3mm"
    t.boolean  "cardboard"
    t.boolean  "cardboard_wave"
    t.boolean  "vinyl"
    t.boolean  "foil"
    t.boolean  "pla"
    t.string   "image"
    t.integer  "user_id"
    t.string   "file"
    t.string   "search"
    t.string   "machine_filter"
    t.string   "material_filter"
    t.string   "software_filter"
    t.integer  "machine_id"
    t.integer  "program_id"
    t.integer  "material_id"
  end

  add_index "fabmoments", ["machine_id"], name: "index_fabmoments_on_machine_id", using: :btree
  add_index "fabmoments", ["material_id"], name: "index_fabmoments_on_material_id", using: :btree
  add_index "fabmoments", ["program_id"], name: "index_fabmoments_on_program_id", using: :btree

  create_table "fabmoments_machines", id: false, force: :cascade do |t|
    t.integer "machine_id",   null: false
    t.integer "fabmoment_id", null: false
  end

  add_index "fabmoments_machines", ["fabmoment_id", "machine_id"], name: "index_fabmoments_machines_on_fabmoment_id_and_machine_id", using: :btree
  add_index "fabmoments_machines", ["machine_id", "fabmoment_id"], name: "index_fabmoments_machines_on_machine_id_and_fabmoment_id", using: :btree

  create_table "fabmoments_materials", id: false, force: :cascade do |t|
    t.integer "fabmoment_id", null: false
    t.integer "material_id",  null: false
  end

  add_index "fabmoments_materials", ["fabmoment_id", "material_id"], name: "index_fabmoments_materials_on_fabmoment_id_and_material_id", using: :btree
  add_index "fabmoments_materials", ["material_id", "fabmoment_id"], name: "index_fabmoments_materials_on_material_id_and_fabmoment_id", using: :btree

  create_table "fabmoments_programs", id: false, force: :cascade do |t|
    t.integer "fabmoment_id", null: false
    t.integer "program_id",   null: false
  end

  add_index "fabmoments_programs", ["fabmoment_id", "program_id"], name: "index_fabmoments_programs_on_fabmoment_id_and_program_id", using: :btree
  add_index "fabmoments_programs", ["program_id", "fabmoment_id"], name: "index_fabmoments_programs_on_program_id_and_fabmoment_id", using: :btree

  create_table "fabmoments_tags", force: :cascade do |t|
    t.integer  "fabmoment_id"
    t.integer  "tag_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "fabmoments_tags", ["fabmoment_id"], name: "index_fabmoments_tags_on_fabmoment_id", using: :btree
  add_index "fabmoments_tags", ["tag_id"], name: "index_fabmoments_tags_on_tag_id", using: :btree

  create_table "machines", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string   "sort"
    t.string   "name"
    t.integer  "thickness"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "username"
    t.date     "date_of_birth"
    t.string   "first_name"
    t.string   "surname"
    t.string   "gender"
    t.string   "country"
    t.string   "province"
    t.string   "city"
    t.string   "avatar"
    t.boolean  "admin",                  default: false
    t.datetime "archived_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "comments", "fabmoments"
  add_foreign_key "fabmoments", "machines"
  add_foreign_key "fabmoments", "materials"
  add_foreign_key "fabmoments", "programs"
  add_foreign_key "fabmoments_tags", "fabmoments"
  add_foreign_key "fabmoments_tags", "tags"
end
