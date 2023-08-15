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

ActiveRecord::Schema[7.0].define(version: 2023_08_15_170608) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "certifications", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "start_date"
    t.date "end_date"
    t.bigint "education_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["education_id"], name: "index_certifications_on_education_id"
  end

  create_table "educations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "place"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "experience_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experience_id"], name: "index_projects_on_experience_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.string "kind"
    t.bigint "education_id", null: false
    t.bigint "certification_id", null: false
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["certification_id"], name: "index_skills_on_certification_id"
    t.index ["education_id"], name: "index_skills_on_education_id"
    t.index ["project_id"], name: "index_skills_on_project_id"
  end

  add_foreign_key "certifications", "educations"
  add_foreign_key "projects", "experiences"
  add_foreign_key "skills", "certifications"
  add_foreign_key "skills", "educations"
  add_foreign_key "skills", "projects"
end
