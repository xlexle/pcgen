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

ActiveRecord::Schema.define(version: 20170210220301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conflicts", force: :cascade do |t|
    t.text     "reason"
    t.boolean  "strict"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "power_supplies", force: :cascade do |t|
    t.string   "form_factor"
    t.decimal  "amps_12v",          precision: 4, scale: 1
    t.boolean  "full_modular"
    t.boolean  "semi_modular"
    t.string   "efficiency"
    t.string   "oem"
    t.boolean  "semipassive"
    t.boolean  "has_fan_switch"
    t.boolean  "quiet"
    t.integer  "eps_length_cm"
    t.integer  "pcie_8pin_qty"
    t.integer  "pcie_6pin_qty"
    t.integer  "sata_qty"
    t.boolean  "has_pretty_cables"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "product_conflicts", force: :cascade do |t|
    t.string  "product_type"
    t.integer "product_id"
    t.integer "conflict_id"
    t.index ["conflict_id"], name: "index_product_conflicts_on_conflict_id", using: :btree
    t.index ["product_type", "product_id"], name: "index_product_conflicts_on_product_type_and_product_id", using: :btree
  end

  create_table "property_lists", force: :cascade do |t|
    t.boolean  "listed"
    t.integer  "quality"
    t.string   "product_name"
    t.string   "sku"
    t.string   "brand"
    t.string   "prices_url"
    t.string   "specs_url"
    t.text     "description"
    t.integer  "warranty"
    t.integer  "length_mm"
    t.integer  "width_mm"
    t.integer  "height_mm"
    t.string   "primary_colors"
    t.string   "secondary_colors"
    t.string   "led_color"
    t.string   "product_type"
    t.integer  "product_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["product_type", "product_id"], name: "index_property_lists_on_product_type_and_product_id", using: :btree
  end

  add_foreign_key "product_conflicts", "conflicts"
end
