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

ActiveRecord::Schema[7.0].define(version: 2023_10_09_205433) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "proveedor", force: :cascade do |t|
    t.string "nombre"
    t.string "tipo_de_servicio"
    t.string "horario"
    t.string "zona"
    t.decimal "costo"
    t.string "telefono"
    t.float "calificacion"
    t.integer "recomendaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "nombre"
    t.string "tipo_de_servicio"
    t.string "horario"
    t.string "zona"
    t.decimal "costo"
    t.string "telefono"
    t.float "calificacion"
    t.integer "recomendaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resena", force: :cascade do |t|
    t.string "nombre"
    t.text "reseña"
    t.float "calificacion"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resenas", force: :cascade do |t|
    t.string "nombre"
    t.text "reseña"
    t.float "calificacion"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "proveedor_id", null: false
    t.index ["proveedor_id"], name: "index_resenas_on_proveedor_id"
  end

  add_foreign_key "resenas", "proveedors"
end