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

ActiveRecord::Schema[7.0].define(version: 2023_01_29_190532) do
  create_table "categoria", force: :cascade do |t|
    t.text "descricao"
    t.text "imagem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estoques", force: :cascade do |t|
    t.integer "estminimo"
    t.integer "estmax"
    t.integer "qtdestoque"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.integer "codBarra"
    t.string "name"
    t.text "descricao"
    t.integer "status"
    t.integer "subcategorias_id"
    t.float "preco"
    t.text "imagem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subcategoria", force: :cascade do |t|
    t.text "descricao"
    t.integer "categorias_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
