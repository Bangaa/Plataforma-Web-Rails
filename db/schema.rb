# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141127050649) do

  create_table "consolas", force: true do |t|
    t.integer  "consola_id"
    t.string   "nombre_consola"
    t.text     "descripcion_consola"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "empresas", force: true do |t|
    t.integer  "empresa_id"
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estadisticas", force: true do |t|
    t.integer  "estadistica_id"
    t.integer  "positivos"
    t.integer  "negativos"
    t.integer  "neutrales"
    t.integer  "suma_total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "frase_calificadoras", force: true do |t|
    t.integer  "frase_calificadora_id"
    t.string   "frase"
    t.integer  "estado_animo"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "palabra_claves", force: true do |t|
    t.integer  "palabra_clave_id"
    t.string   "palabra"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tiene_tuit_pal_cals", force: true do |t|
    t.integer  "tiene_tuit_pal_cal_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "tiene_tuit_pal_claves", force: true do |t|
    t.integer  "tiene_tuit_pal_clave_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tweets", force: true do |t|
    t.integer  "tweet_id"
    t.datetime "fecha"
    t.text     "mensaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: true do |t|
    t.integer  "usuario_id"
    t.string   "user_name"
    t.integer  "seguidores"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
