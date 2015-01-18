ActiveRecord::Schema.define(version: 20150115235614) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_categories", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "brand_name"
    t.string   "item_name"
    t.decimal  "quantity"
    t.decimal  "weight"
    t.string   "measurement"
    t.decimal  "cost"
    t.decimal  "item_total_cost"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "purchase_items", force: :cascade do |t|
    t.integer  "purchase_id"
    t.integer  "item_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.date     "purchased_on"
    t.string   "place"
    t.decimal  "purchased_total_cost"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
