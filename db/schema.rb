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

ActiveRecord::Schema.define(version: 20191112222325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bordas", force: :cascade do |t|
    t.string "nome"
    t.decimal "preco_adicional"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string "email"
    t.string "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "borda_id"
    t.bigint "tamanho_id"
    t.index ["borda_id"], name: "index_pedidos_on_borda_id"
    t.index ["tamanho_id"], name: "index_pedidos_on_tamanho_id"
  end

  create_table "pedidos_sabores", force: :cascade do |t|
    t.bigint "pedido_id"
    t.bigint "sabor_id"
    t.index ["pedido_id"], name: "index_pedidos_sabores_on_pedido_id"
    t.index ["sabor_id"], name: "index_pedidos_sabores_on_sabor_id"
  end

  create_table "sabores", force: :cascade do |t|
    t.string "nome"
    t.decimal "preco_adicional"
    t.string "ingredientes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tamanhos", force: :cascade do |t|
    t.string "nome"
    t.decimal "preco"
    t.integer "diametro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pedidos", "bordas"
  add_foreign_key "pedidos", "tamanhos"
  add_foreign_key "pedidos_sabores", "pedidos"
  add_foreign_key "pedidos_sabores", "sabores"
end
