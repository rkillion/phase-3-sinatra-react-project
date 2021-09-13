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

ActiveRecord::Schema.define(version: 2021_09_13_205614) do

  create_table "developers", force: :cascade do |t|
    t.string "name"
    t.string "github_profile"
  end

  create_table "features", force: :cascade do |t|
    t.string "title"
    t.string "description"
  end

  create_table "game_features", force: :cascade do |t|
    t.integer "feature_id"
    t.integer "game_id"
    t.string "feature_explanation"
    t.index ["feature_id"], name: "index_game_features_on_feature_id"
    t.index ["game_id"], name: "index_game_features_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.string "github_link"
    t.string "preview_href"
    t.string "description"
    t.string "language"
    t.string "sources"
    t.boolean "has_comments?"
    t.string "theme"
    t.string "game_type"
    t.integer "file_size"
    t.boolean "keyboard?"
    t.boolean "controller?"
    t.integer "developer_id"
    t.index ["developer_id"], name: "index_games_on_developer_id"
  end

  add_foreign_key "game_features", "features"
  add_foreign_key "game_features", "games"
  add_foreign_key "games", "developers"
end
