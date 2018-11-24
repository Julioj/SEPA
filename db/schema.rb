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

ActiveRecord::Schema.define(version: 20181124153317) do

  create_table "ambitos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "autoridads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

ActiveRecord::Schema.define(version: 20170924162840) do

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "companyId"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "industryTypeId"
    t.integer  "employeeId"
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "cuit"
    t.string   "comment"
    t.boolean  "suscription"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "fantasy_name"
    t.integer  "localidadId"
    t.string   "party"
    t.string   "postal_code"
    t.string   "tlf"
    t.string   "internal_tlf"
    t.string   "contact"
    t.string   "companyType"
    t.string   "cellphone"
    t.integer  "solicitadorId"
    t.integer  "abitoId"
    t.integer  "autoridadId"
    t.integer  "legislacionId"
    t.integer  "frecuencyTypeId"
    t.string   "localidad"
    t.string   "partido"
    t.string   "type"
  end

  create_table "documents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "visitId"
    t.string   "name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "images_file_name"
    t.string   "images_content_type"
    t.integer  "images_file_size"
    t.datetime "images_updated_at"
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "tlf"
    t.boolean  "isLic"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "mat_number"
    t.string   "cuit"
    t.string   "address"
    t.string   "degree"
    t.integer  "localidadId"
    t.string   "especializacion"
    t.string   "cellphone"
    t.string   "celular"
    t.string   "comentario"
  end

  create_table "frecuencies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "days"
  end

  create_table "industry_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
  end

  create_table "frecuencies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


  create_table "legislacions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


  create_table "solicitadors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visit_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "aked_by"
    t.string   "ambit"
    t.string   "authority"
    t.string   "legislation"
    t.string   "observation"
    t.date     "aproval_budget_date"
    t.string   "budget_sent_date"
    t.string   "aproval_date"
    t.boolean  "print"
  end

  create_table "visits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "companyId"
    t.integer  "visitTypeId"
    t.integer  "frecuencyTypeId"
    t.integer  "employeeId"
    t.date     "nextVisit"
    t.date     "visitDate"
    t.boolean  "aproved"
    t.date     "aprovalDate"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.boolean  "sent"
    t.string   "observation"
    t.date     "aproval_budget_date"
    t.string   "budget_sent_date"
    t.string   "aproval_date"
    t.boolean  "print"
  end

end
