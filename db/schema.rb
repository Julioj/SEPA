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

ActiveRecord::Schema.define(version: 20170826230841) do

  create_table "comments", force: :cascade do |t|
    t.integer  "companyId"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.integer  "industryTypeId"
    t.integer  "employeeId"
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "cuit"
    t.string   "comment"
    t.boolean  "suscription"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "documents", force: :cascade do |t|
    t.integer  "visitId"
    t.string   "name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "images_file_name"
    t.string   "images_content_type"
    t.integer  "images_file_size"
    t.datetime "images_updated_at"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "tlf"
    t.boolean  "isLic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frecuencies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "days"
  end

  create_table "industry_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visit_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "visits", force: :cascade do |t|
    t.integer  "companyId"
    t.integer  "visitTypeId"
    t.integer  "frecuencyTypeId"
    t.integer  "employeeId"
    t.date     "nextVisit"
    t.date     "visitDate"
    t.boolean  "aproved"
    t.date     "aprovalDate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
