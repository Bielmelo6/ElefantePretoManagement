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

ActiveRecord::Schema[7.0].define(version: 2022_09_28_023023) do
  create_table "cargos", force: :cascade do |t|
    t.string "funcao"
    t.integer "salario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conta", force: :cascade do |t|
    t.integer "item_id", null: false
    t.integer "cliente_id", null: false
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_conta_on_cliente_id"
    t.index ["item_id"], name: "index_conta_on_item_id"
  end

  create_table "donos", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.date "nascimento"
    t.string "email"
    t.integer "cargo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cargo_id"], name: "index_funcionarios_on_cargo_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "produto"
    t.integer "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "conta", "clientes"
  add_foreign_key "conta", "items"
  add_foreign_key "funcionarios", "cargos"
end
