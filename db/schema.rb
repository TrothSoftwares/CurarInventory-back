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

ActiveRecord::Schema.define(version: 20160620094807) do

  create_table "commontoolissuances", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string   "status"
    t.date     "issuedate"
    t.integer  "employee_id"
    t.integer  "commontool_id"
    t.date     "returndate"
    t.string   "location"
    t.datetime "created_at",    default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at",                                         null: false
  end

  create_table "commontools", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string   "slno"
    t.string   "name"
    t.string   "status"
    t.date     "issuedate"
    t.integer  "employee_id"
    t.date     "returndate"
    t.string   "location"
    t.datetime "created_at",  default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "customers", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string   "companyname"
    t.string   "companycode"
    t.string   "chargecode"
    t.string   "email"
    t.string   "address1"
    t.string   "address2"
    t.string   "suburb"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zipcode"
    t.string   "phone"
    t.datetime "created_at",  default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "employees", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer  "slno"
    t.string   "payroll"
    t.string   "name"
    t.string   "department"
    t.string   "workcontact"
    t.string   "personalcontact"
    t.datetime "created_at",      default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at",                                           null: false
  end

  create_table "orderitems", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "total"
    t.string   "orderitemstatus"
    t.integer  "order_id"
    t.datetime "created_at",      default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at",                                           null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.date     "duedate"
    t.integer  "totalunits"
    t.integer  "totalcost"
    t.string   "orderstatus"
    t.integer  "customer_id"
    t.datetime "created_at",     default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at",                                          null: false
    t.string   "mrf"
    t.string   "location"
    t.string   "natureofwork"
    t.integer  "supplier_id"
    t.integer  "employee_id"
    t.date     "issuancedate"
    t.integer  "requestedby_id"
    t.integer  "approvedby_id"
  end

  create_table "probras", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer  "id",                                              null: false
    t.string   "prr"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at",                                      null: false
  end

  create_table "productbrands", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string   "brandname"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at",                                      null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string  "itemcode"
    t.string  "productname"
    t.integer "initialstocklevel"
    t.decimal "initialcostprice",  precision: 5, scale: 2
    t.decimal "buyprice",          precision: 5, scale: 2
    t.decimal "retailprice",       precision: 5, scale: 2
    t.integer "supplier_id"
    t.integer "producttype_id"
    t.integer "productbrand_id"
  end

  create_table "producttypes", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "typename"
  end

  create_table "purchaseorderitems", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "total"
    t.string   "poitemstatus"
    t.date     "recieveddate"
    t.integer  "purchaseorder_id"
    t.datetime "created_at",       default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "purchaseorders", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.date     "duedate"
    t.date     "recieveddate"
    t.integer  "totalunits"
    t.integer  "totalcost"
    t.string   "postatus"
    t.integer  "supplier_id"
    t.datetime "created_at",   default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at",                                        null: false
    t.string   "invoiceno"
  end

  create_table "stockadjustmentitems", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "stockadjustment_id"
    t.integer  "total"
    t.datetime "created_at",         default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at",                                              null: false
  end

  create_table "stockadjustments", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer  "customer_id"
    t.string   "reason"
    t.text     "notes",       limit: 65535
    t.string   "sastatus"
    t.integer  "totalunits"
    t.integer  "totalcost"
    t.integer  "order_id"
    t.datetime "created_at",                default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at",                                                     null: false
  end

  create_table "suppliers", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string   "companyname"
    t.string   "email"
    t.string   "address1"
    t.string   "address2"
    t.string   "suburb"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zipcode"
    t.string   "phone"
    t.datetime "created_at",  default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at",                                       null: false
    t.string   "companycode"
    t.string   "chargecode"
  end

  add_index "suppliers", ["id"], name: "id", unique: true, using: :btree

  create_table "tools", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "status"
    t.date     "issuedate"
    t.integer  "employee_id"
    t.date     "lostdate"
    t.date     "damagedate"
    t.datetime "created_at",  default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at",                                       null: false
    t.string   "vendor"
    t.string   "invoiceno"
  end

  create_table "users", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string   "email",                  default: ""
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "remember_created_at",                                         null: false
    t.integer  "sign_in_count",          default: 0,                          null: false
    t.datetime "current_sign_in_at",                                          null: false
    t.datetime "last_sign_in_at",                                             null: false
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token",   default: ""
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
  end

end
