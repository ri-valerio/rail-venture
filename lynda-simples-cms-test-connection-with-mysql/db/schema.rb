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

ActiveRecord::Schema.define(version: 20150223205245) do

  create_table "acordos", id: false, force: :cascade do |t|
    t.integer  "id",               limit: 4,   null: false
    t.datetime "datetime_acordo",              null: false
    t.string   "instituicao",      limit: 255, null: false
    t.string   "foto_instituicao", limit: 45,  null: false
  end

  create_table "administradores", id: false, force: :cascade do |t|
    t.integer  "id",                    limit: 4,   null: false
    t.string   "username",              limit: 255, null: false
    t.string   "password",              limit: 255, null: false
    t.datetime "datetime_ultimo_login",             null: false
  end

  create_table "consultas_marcadas", force: :cascade do |t|
    t.datetime "datetime_confirmacao",             null: false
    t.string   "data_consulta",        limit: 10,  null: false
    t.string   "hora_consulta",        limit: 10,  null: false
    t.integer  "medicos_id",           limit: 4,   null: false
    t.string   "utentes_email",        limit: 255, null: false
  end

  add_index "consultas_marcadas", ["medicos_id"], name: "fk_consultas_com_marcacao_confirmada_a_realizar_medicos1_idx", using: :btree
  add_index "consultas_marcadas", ["utentes_email"], name: "fk_consultas_com_marcacao_confirmada_a_realizar_utentes1_idx", using: :btree

  create_table "consultas_realizadas", force: :cascade do |t|
    t.datetime "datetime_consulta_realizada",                                     null: false
    t.decimal  "valor_consulta",                          precision: 9, scale: 2, null: false
    t.string   "diagnostico",                 limit: 255,                         null: false
    t.string   "prescricao",                  limit: 255,                         null: false
    t.integer  "medicos_id",                  limit: 4,                           null: false
    t.string   "utentes_email",               limit: 255,                         null: false
  end

  add_index "consultas_realizadas", ["medicos_id"], name: "fk_consultas_realizadas_medicos1_idx", using: :btree
  add_index "consultas_realizadas", ["utentes_email"], name: "fk_consultas_realizadas_utentes1_idx", using: :btree

  create_table "especialidades", force: :cascade do |t|
    t.string  "especialidade",           limit: 255,                           null: false
    t.text    "descricao_especialidade", limit: 65535,                         null: false
    t.decimal "preco_consulta",                        precision: 5, scale: 2, null: false
  end

  create_table "horarios", force: :cascade do |t|
    t.string "descricao_horario", limit: 45, null: false
  end

  create_table "medicos", force: :cascade do |t|
    t.string  "primeiro_nome",     limit: 100,                         null: false
    t.string  "ultimo_nome",       limit: 100,                         null: false
    t.string  "email",             limit: 255,                         null: false
    t.string  "contacto_tel",      limit: 45,                          null: false
    t.string  "foto",              limit: 45,                          null: false
    t.integer "especialidades_id", limit: 4,                           null: false
    t.integer "horarios_id",       limit: 4,                           null: false
    t.decimal "salario_mensal",                precision: 7, scale: 2, null: false
  end

  add_index "medicos", ["especialidades_id"], name: "fk_medicos_especialidades1_idx", using: :btree
  add_index "medicos", ["horarios_id"], name: "fk_medicos_horarios1_idx", using: :btree

  create_table "medicos_administracao_de_consultas", id: false, force: :cascade do |t|
    t.integer  "id",                    limit: 4,   null: false
    t.string   "username",              limit: 50,  null: false
    t.string   "password",              limit: 100, null: false
    t.datetime "datetime_ultimo_login",             null: false
    t.integer  "medicos_id",            limit: 4,   null: false
  end

  add_index "medicos_administracao_de_consultas", ["medicos_id"], name: "fk_medicos_administracao_de_consultas_medicos1_idx", using: :btree

  create_table "questoes_online", force: :cascade do |t|
    t.string   "nome",             limit: 55,    null: false
    t.string   "email",            limit: 100,   null: false
    t.text     "mensagem",         limit: 65535, null: false
    t.datetime "datetime_questao",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 25
    t.string   "last_name",  limit: 50
    t.string   "email",      limit: 255, default: "", null: false
    t.string   "password",   limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "utentes", primary_key: "email", force: :cascade do |t|
    t.string   "primeiro_nome",    limit: 100, null: false
    t.string   "ultimo_nome",      limit: 100, null: false
    t.string   "morada",           limit: 255, null: false
    t.string   "contacto_tel",     limit: 45,  null: false
    t.datetime "datetime_registo",             null: false
  end

  create_table "vantagens", force: :cascade do |t|
    t.string "titulo",            limit: 255,   null: false
    t.text   "conteudo_vantagem", limit: 65535, null: false
  end

  create_table "view_consultas_do_mes_currente", id: false, force: :cascade do |t|
    t.integer  "id",                   limit: 4,   default: 0, null: false
    t.datetime "datetime_confirmacao",                         null: false
    t.string   "data_consulta",        limit: 10,              null: false
    t.string   "hora_consulta",        limit: 10,              null: false
    t.integer  "medicos_id",           limit: 4,               null: false
    t.string   "utentes_email",        limit: 255,             null: false
  end

  create_table "view_consultas_marcadas", id: false, force: :cascade do |t|
    t.integer  "id",                   limit: 4,   default: 0, null: false
    t.datetime "datetime_confirmacao",                         null: false
    t.string   "data_consulta",        limit: 10,              null: false
    t.string   "hora_consulta",        limit: 10,              null: false
    t.integer  "medicos_id",           limit: 4,               null: false
    t.string   "especialidade",        limit: 255,             null: false
    t.string   "descricao_horario",    limit: 45,              null: false
    t.string   "utentes_email",        limit: 255,             null: false
  end

  create_table "view_emails_web_marketing", id: false, force: :cascade do |t|
    t.string "email", limit: 255, default: "", null: false
  end

  create_table "view_historico_consultas_realizadas", id: false, force: :cascade do |t|
    t.integer  "id",                          limit: 4,                           default: 0, null: false
    t.datetime "datetime_consulta_realizada",                                                 null: false
    t.decimal  "valor_consulta",                          precision: 9, scale: 2,             null: false
    t.string   "diagnostico",                 limit: 255,                                     null: false
    t.string   "prescricao",                  limit: 255,                                     null: false
    t.integer  "medicos_id",                  limit: 4,                                       null: false
    t.string   "especialidade",               limit: 255,                                     null: false
    t.string   "descricao_horario",           limit: 45,                                      null: false
    t.string   "utentes_email",               limit: 255,                                     null: false
  end

  create_table "view_medicos_num_consultas", id: false, force: :cascade do |t|
    t.string  "primeiro_nome",            limit: 100,             null: false
    t.string  "ultimo_nome",              limit: 100,             null: false
    t.integer "Nº de Consultas Marcadas", limit: 8,   default: 0, null: false
  end

  create_table "view_nome_medicos_consultas_marcadas", id: false, force: :cascade do |t|
    t.string "primeiro_nome", limit: 100, null: false
    t.string "ultimo_nome",   limit: 100, null: false
  end

  create_table "view_preco_maior_ou_igual_40", id: false, force: :cascade do |t|
    t.integer "id",                      limit: 4,                             default: 0, null: false
    t.string  "especialidade",           limit: 255,                                       null: false
    t.text    "descricao_especialidade", limit: 65535,                                     null: false
    t.decimal "preco_consulta",                        precision: 5, scale: 2,             null: false
  end

  create_table "view_telemoveis_96", id: false, force: :cascade do |t|
    t.string   "email",            limit: 255, null: false
    t.string   "primeiro_nome",    limit: 100, null: false
    t.string   "ultimo_nome",      limit: 100, null: false
    t.string   "morada",           limit: 255, null: false
    t.string   "contacto_tel",     limit: 45,  null: false
    t.datetime "datetime_registo",             null: false
  end

  add_foreign_key "consultas_marcadas", "medicos", column: "medicos_id", name: "fk_consultas_com_marcacao_confirmada_a_realizar_medicos1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "consultas_marcadas", "utentes", column: "utentes_email", primary_key: "email", name: "fk_consultas_com_marcacao_confirmada_a_realizar_utentes1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "consultas_realizadas", "medicos", column: "medicos_id", name: "fk_consultas_realizadas_medicos1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "consultas_realizadas", "utentes", column: "utentes_email", primary_key: "email", name: "fk_consultas_realizadas_utentes1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "medicos", "especialidades", column: "especialidades_id", name: "fk_medicos_especialidades1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "medicos", "horarios", column: "horarios_id", name: "fk_medicos_horarios1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "medicos_administracao_de_consultas", "medicos", column: "medicos_id", name: "fk_medicos_administracao_de_consultas_medicos1", on_update: :cascade, on_delete: :cascade
end
