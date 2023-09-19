# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_09_19_123018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
  end

  create_table "discounts", force: :cascade do |t|
    t.float "discount_value"
    t.string "applicable_to"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "discountable_type"
    t.bigint "discountable_id"
    t.index ["discountable_type", "discountable_id"], name: "index_discounts_on_discountable"
  end

  create_table "invoicees", force: :cascade do |t|
    t.string "invoice_no"
    t.float "invoice_amount"
    t.bigint "company_id"
    t.bigint "item_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_invoicees_on_company_id"
    t.index ["item_id"], name: "index_invoicees_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.bigint "invoicee_id"
    t.bigint "company_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_items_on_company_id"
    t.index ["invoicee_id"], name: "index_items_on_invoicee_id"
  end

end
