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

ActiveRecord::Schema.define(version: 20160531100956) do

  create_table "commontoolissuances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "status"
    t.date     "issuedate"
    t.integer  "employee_id"
    t.integer  "commontool_id"
    t.date     "returndate"
    t.string   "location"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "commontoolissuances", ["commontool_id"], name: "index_commontoolissuances_on_commontool_id", using: :btree
  add_index "commontoolissuances", ["employee_id"], name: "index_commontoolissuances_on_employee_id", using: :btree

  create_table "commontools", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "slno"
    t.string   "name"
    t.string   "status"
    t.date     "issuedate"
    t.integer  "employee_id"
    t.date     "returndate"
    t.string   "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "commontools", ["employee_id"], name: "index_commontools_on_employee_id", using: :btree

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "slno"
    t.string   "payroll"
    t.string   "name"
    t.string   "department"
    t.string   "workcontact"
    t.string   "personalcontact"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "orderitems", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "total"
    t.string   "orderitemstatus"
    t.integer  "order_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "orderitems", ["order_id"], name: "index_orderitems_on_order_id", using: :btree
  add_index "orderitems", ["product_id"], name: "index_orderitems_on_product_id", using: :btree

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "duedate"
    t.integer  "totalunits"
    t.integer  "totalcost"
    t.string   "orderstatus"
    t.integer  "customer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "mrf"
    t.string   "location"
    t.string   "natureofwork"
    t.integer  "supplier_id"
    t.integer  "employee_id"
    t.date     "issuancedate"
    t.integer  "requestedby_id"
    t.integer  "approvedby_id"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree
  add_index "orders", ["employee_id"], name: "index_orders_on_employee_id", using: :btree
  add_index "orders", ["supplier_id"], name: "index_orders_on_supplier_id", using: :btree

  create_table "probras", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "prr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productbrands", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "brandname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "itemcode"
    t.string  "productname"
    t.integer "initialstocklevel"
    t.integer "initialcostprice"
    t.integer "buyprice"
    t.integer "retailprice"
    t.integer "supplier_id"
    t.integer "producttype_id"
    t.integer "productbrand_id"
  end

  add_index "products", ["productbrand_id"], name: "index_products_on_productbrand_id", using: :btree
  add_index "products", ["producttype_id"], name: "index_products_on_producttype_id", using: :btree
  add_index "products", ["supplier_id"], name: "index_products_on_supplier_id", using: :btree

  create_table "producttypes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "typename"
  end

  create_table "purchaseorderitems", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "total"
    t.string   "poitemstatus"
    t.date     "recieveddate"
    t.integer  "purchaseorder_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "purchaseorderitems", ["product_id"], name: "index_purchaseorderitems_on_product_id", using: :btree
  add_index "purchaseorderitems", ["purchaseorder_id"], name: "index_purchaseorderitems_on_purchaseorder_id", using: :btree

  create_table "purchaseorders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "duedate"
    t.date     "recieveddate"
    t.integer  "totalunits"
    t.integer  "totalcost"
    t.string   "postatus"
    t.integer  "supplier_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "purchaseorders", ["supplier_id"], name: "index_purchaseorders_on_supplier_id", using: :btree

  create_table "stockadjustmentitems", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "stockadjustment_id"
    t.integer  "total"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "stockadjustmentitems", ["product_id"], name: "index_stockadjustmentitems_on_product_id", using: :btree
  add_index "stockadjustmentitems", ["stockadjustment_id"], name: "index_stockadjustmentitems_on_stockadjustment_id", using: :btree

  create_table "stockadjustments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "customer_id"
    t.string   "reason"
    t.text     "notes",       limit: 65535
    t.string   "sastatus"
    t.integer  "totalunits"
    t.integer  "totalcost"
    t.integer  "order_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "stockadjustments", ["customer_id"], name: "index_stockadjustments_on_customer_id", using: :btree
  add_index "stockadjustments", ["order_id"], name: "index_stockadjustments_on_order_id", using: :btree

  create_table "suppliers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "companycode"
    t.string   "chargecode"
  end

  create_table "tools", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "status"
    t.date     "issuedate"
    t.integer  "employee_id"
    t.date     "lostdate"
    t.date     "damagedate"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "vendor"
    t.string   "invoiceno"
  end

  add_index "tools", ["employee_id"], name: "index_tools_on_employee_id", using: :btree

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token",   default: "", null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "commontoolissuances", "commontools"
  add_foreign_key "commontoolissuances", "employees"
  add_foreign_key "commontools", "employees"
  add_foreign_key "orderitems", "orders"
  add_foreign_key "orderitems", "products"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "employees"
  add_foreign_key "orders", "suppliers"
  add_foreign_key "products", "productbrands"
  add_foreign_key "products", "producttypes"
  add_foreign_key "products", "suppliers"
  add_foreign_key "purchaseorderitems", "products"
  add_foreign_key "purchaseorderitems", "purchaseorders"
  add_foreign_key "purchaseorders", "suppliers"
  add_foreign_key "stockadjustmentitems", "products"
  add_foreign_key "stockadjustmentitems", "stockadjustments"
  add_foreign_key "tools", "employees"
end
