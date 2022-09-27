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

ActiveRecord::Schema[7.0].define(version: 2022_09_27_004645) do
  create_table "conta", force: :cascade do |t|
    t.integer "total"
    t.integer "item_id", null: false
    t.integer "cliente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_conta_on_cliente_id"
    t.index ["item_id"], name: "index_conta_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer "preco"
    t.integer "conta_id", null: false
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conta_id"], name: "index_items_on_conta_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "conta", "clientes"
  add_foreign_key "conta", "items"
  add_foreign_key "items", "conta", column: "conta_id"
end
