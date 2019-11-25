# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_25_024608) do

  create_table "atleticas", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "quadras", force: :cascade do |t|
    t.string "name"
    t.integer "ordem"
    t.integer "atual"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "esportes"
    t.string "seg"
    t.string "ter"
    t.string "qua"
    t.string "qui"
    t.string "sex"
  end

  create_table "reserva_aceita", force: :cascade do |t|
    t.string "dono"
    t.string "esporte"
    t.string "naipe"
    t.string "inicio"
    t.string "fim"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.string "modalidade"
    t.string "naipe"
    t.string "dia"
    t.time "inicio"
    t.time "termino"
    t.integer "odp"
    t.integer "ph"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "criador"
    t.integer "status"
    t.index ["user_id"], name: "index_reservas_on_user_id"
  end

  create_table "solicitacao_pontuals", force: :cascade do |t|
    t.text "Solicitação"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.integer "role"
  end

  add_foreign_key "reservas", "users"
end
