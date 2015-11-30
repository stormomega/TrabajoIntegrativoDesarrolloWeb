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

ActiveRecord::Schema.define(version: 20151129023825) do

  create_table "direccions", force: true do |t|
    t.string   "calle"
    t.integer  "numero"
    t.string   "comuna"
    t.string   "ciudad"
    t.string   "region"
    t.string   "pais"
    t.integer  "trabajador_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "direccions", ["trabajador_id"], name: "index_direccions_on_trabajador_id"

  create_table "soleras", force: true do |t|
    t.string   "denominacion"
    t.integer  "altura_h_mm"
    t.integer  "base_b_mm"
    t.integer  "ancho_superior_c_mm"
    t.integer  "rebaje_triangular_e_mm"
    t.integer  "rebaje_triangular_d_mm"
    t.integer  "largo_a_mm"
    t.integer  "resistencia_flexion_kn"
    t.integer  "peso_referencial_kg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solerillas", force: true do |t|
    t.string   "denominacion"
    t.integer  "largo_l_mm"
    t.integer  "altura_h_mm"
    t.integer  "base_b_mm"
    t.integer  "resistencia_flexion_kn"
    t.integer  "peso_referencial_kg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trabajadors", force: true do |t|
    t.integer  "rut"
    t.string   "nombres"
    t.string   "apellidopaterno"
    t.string   "apellidomaterno"
    t.date     "fechanacimineto"
    t.string   "estadocivil"
    t.string   "sexo"
    t.integer  "celular"
    t.string   "correo"
    t.string   "cargo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
