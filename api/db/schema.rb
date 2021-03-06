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

ActiveRecord::Schema.define(version: 2022_03_16_235921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "name", null: false
    t.string "join_code", null: false
    t.integer "status", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["join_code"], name: "index_games_on_join_code"
    t.index ["status"], name: "index_games_on_status"
  end

  create_table "players", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "team_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "prompt", null: false
    t.text "correct_answer"
    t.integer "order", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_questions_on_game_id"
    t.index ["order"], name: "index_questions_on_order", unique: true
  end

  create_table "submissions", force: :cascade do |t|
    t.text "response"
    t.integer "status"
    t.bigint "team_id"
    t.bigint "player_id"
    t.bigint "question_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_submissions_on_player_id"
    t.index ["question_id"], name: "index_submissions_on_question_id"
    t.index ["team_id"], name: "index_submissions_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_teams_on_game_id"
  end

end
