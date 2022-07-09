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

ActiveRecord::Schema.define(version: 2022_07_09_080429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "empresas", force: :cascade do |t|
    t.string "rut", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "razon_social"
    t.string "representante"
    t.string "direccion"
    t.integer "telefono"
    t.index ["email"], name: "index_empresas_on_email", unique: true
    t.index ["reset_password_token"], name: "index_empresas_on_reset_password_token", unique: true
    t.index ["rut"], name: "index_empresas_on_rut", unique: true
  end

  create_table "generos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "modalidades", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ofertas", force: :cascade do |t|
    t.string "cargo"
    t.text "descripcion"
    t.integer "cant_vacantes"
    t.integer "salario_min"
    t.integer "salario_max"
    t.datetime "fecha_inicio"
    t.integer "modalidad_id"
    t.bigint "empresa_id", default: 1, null: false
    t.bigint "region_id", default: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_ofertas_on_empresa_id"
    t.index ["region_id"], name: "index_ofertas_on_region_id"
  end

  create_table "personas", force: :cascade do |t|
    t.string "rut", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nombre"
    t.datetime "fnac"
    t.integer "genero_id", default: 1
    t.integer "telefono"
    t.boolean "curriculum", default: false
    t.index ["email"], name: "index_personas_on_email", unique: true
    t.index ["reset_password_token"], name: "index_personas_on_reset_password_token", unique: true
    t.index ["rut"], name: "index_personas_on_rut", unique: true
  end

  create_table "postulaciones", force: :cascade do |t|
    t.bigint "persona_id", null: false
    t.bigint "oferta_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["oferta_id"], name: "index_postulaciones_on_oferta_id"
    t.index ["persona_id"], name: "index_postulaciones_on_persona_id"
  end

  create_table "regiones", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "ofertas", "empresas"
  add_foreign_key "ofertas", "regiones"
  add_foreign_key "postulaciones", "ofertas"
  add_foreign_key "postulaciones", "personas"
end
