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

ActiveRecord::Schema.define(version: 20161129093815) do

  create_table "games", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.date     "date"
    t.string   "location"
    t.string   "results"
    t.string   "score"
    t.string   "win_lose_stats"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
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
    t.date     "DoB"
    t.string   "Height"
    t.string   "Weight"
    t.string   "Position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "threept_M"
    t.integer  "threept_A"
    t.integer  "rebound"
    t.integer  "assist"
    t.integer  "block"
    t.integer  "steal"
    t.integer  "foul"
    t.integer  "points"
    t.integer  "players_id"
    t.integer  "games_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["games_id"], name: "index_stats_on_games_id", using: :btree
    t.index ["players_id"], name: "index_stats_on_players_id", using: :btree
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "home"
    t.string   "coach"
    t.string   "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "stats", "games", column: "games_id"
  add_foreign_key "stats", "players", column: "players_id"
end
