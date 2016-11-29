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

ActiveRecord::Schema.define(version: 20161129183612) do

  create_table "games", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "home_away"
    t.date     "occasion"
    t.string   "results"
    t.string   "score"
    t.string   "opponents"
    t.string   "win_lose_stat"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "opp_team_games", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "opp_teams_id"
    t.integer  "games_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["games_id"], name: "index_opp_team_games_on_games_id", using: :btree
    t.index ["opp_teams_id"], name: "index_opp_team_games_on_opp_teams_id", using: :btree
  end

  create_table "opp_teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "home"
    t.string   "coach"
    t.string   "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "F_name"
    t.string   "L_name"
    t.date     "DOB"
    t.string   "weight"
    t.string   "height"
    t.string   "position"
    t.string   "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players_plays", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "players_id"
    t.integer  "games_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["games_id"], name: "index_players_plays_on_games_id", using: :btree
    t.index ["players_id"], name: "index_players_plays_on_players_id", using: :btree
  end

  create_table "stats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "rebounds"
    t.integer  "assists"
    t.integer  "fouls"
    t.integer  "points"
    t.string   "threept_stat"
    t.string   "freethrowstat"
    t.string   "feildgoal_stat"
    t.integer  "steals"
    t.integer  "blocks"
    t.integer  "turnovers"
    t.integer  "games_id"
    t.integer  "players_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["games_id"], name: "index_stats_on_games_id", using: :btree
    t.index ["players_id"], name: "index_stats_on_players_id", using: :btree
  end

  add_foreign_key "opp_team_games", "games", column: "games_id"
  add_foreign_key "opp_team_games", "opp_teams", column: "opp_teams_id"
  add_foreign_key "players_plays", "games", column: "games_id"
  add_foreign_key "players_plays", "players", column: "players_id"
  add_foreign_key "stats", "games", column: "games_id"
  add_foreign_key "stats", "players", column: "players_id"
end
