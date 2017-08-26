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

ActiveRecord::Schema.define(version: 20170826170645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "automovils", force: :cascade do |t|
    t.string "marca"
    t.string "color"
    t.integer "modelo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cancions", force: :cascade do |t|
    t.string "nombre"
    t.string "artista"
    t.string "genero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "computadors", force: :cascade do |t|
    t.string "marca"
    t.string "procesador"
    t.integer "ram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleados", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.string "nombre"
    t.string "tipo"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mascota", force: :cascade do |t|
    t.string "nombre"
    t.string "raza"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "viviendas", force: :cascade do |t|
    t.string "barrio"
    t.string "tipo"
    t.integer "habitantes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
