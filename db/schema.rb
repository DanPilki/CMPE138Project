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

ActiveRecord::Schema.define(version: 20161128231040) do

  create_table "Game", primary_key: "Game_id", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "Date",      limit: 10
    t.string "Location",  limit: 20
    t.string "Results",   limit: 20
    t.string "Score",     limit: 10
    t.string "Opponents", limit: 20
    t.string "W-L_Stat",  limit: 10
  end

  create_table "Game_has_Stats", primary_key: ["Player_ID", "Game_ID", "Stat_ID"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "Player_ID", null: false
    t.integer "Game_ID",   null: false
    t.integer "Stat_ID",   null: false
    t.index ["Game_ID"], name: "fk_Game_has_Stats_1_idx", using: :btree
    t.index ["Stat_ID"], name: "fk_Game_has_Stats_3_idx", using: :btree
  end

  create_table "Opp_team_has_Game", primary_key: ["Opp_Team_ID", "Game_ID"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "Opp_Team_ID", null: false
    t.integer "Game_ID",     null: false
    t.index ["Game_ID"], name: "fk_Opp_team_has_Game_1_idx", using: :btree
  end

  create_table "Opposing_Team", primary_key: "Team_ID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "Hometown",    limit: 45
    t.string "Coach_Lname", limit: 45
    t.string "Coach_Fname", limit: 45
    t.string "Team_name",   limit: 45
    t.string "Owner",       limit: 20
  end

  create_table "Player_Stats", primary_key: ["Stat_Id", "Player_ID"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "Stat_Id",   null: false
    t.integer "3pt_M"
    t.integer "3pt_A"
    t.integer "Rebound"
    t.integer "Assist"
    t.integer "Block"
    t.integer "Steal"
    t.integer "Foul"
    t.integer "Points"
    t.integer "Player_ID", null: false
    t.index ["Player_ID"], name: "fk_Player_Stats_1_idx", using: :btree
  end

  create_table "Player_plays", primary_key: ["Player_ID", "Game_ID"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "Player_ID", null: false
    t.integer "Game_ID",   null: false
    t.index ["Game_ID"], name: "fk_Player_plays_2_idx", using: :btree
  end

  create_table "Players", primary_key: "Player_ID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "F_name",   limit: 45, null: false
    t.string "L_name",   limit: 45, null: false
    t.string "DOB",      limit: 10, null: false
    t.string "Weight",   limit: 45, null: false
    t.string "Height",   limit: 45, null: false
    t.string "Position", limit: 45, null: false
  end

  create_table "database_structures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
  end

  add_foreign_key "Game_has_Stats", "Game", column: "Game_ID", primary_key: "Game_id", name: "fk_Game_has_Stats_1"
  add_foreign_key "Game_has_Stats", "Player_Stats", column: "Stat_ID", primary_key: "Stat_Id", name: "fk_Game_has_Stats_3"
  add_foreign_key "Game_has_Stats", "Players", column: "Player_ID", primary_key: "Player_ID", name: "fk_Game_has_Stats_2"
  add_foreign_key "Opp_team_has_Game", "Game", column: "Game_ID", primary_key: "Game_id", name: "fk_Opp_team_has_Game_1"
  add_foreign_key "Opp_team_has_Game", "Opposing_Team", column: "Opp_Team_ID", primary_key: "Team_ID", name: "fk_Opp_team_has_Game_2"
  add_foreign_key "Player_Stats", "Players", column: "Player_ID", primary_key: "Player_ID", name: "fk_Player_Stats_1"
  add_foreign_key "Player_plays", "Game", column: "Game_ID", primary_key: "Game_id", name: "fk_Player_plays_1"
  add_foreign_key "Player_plays", "Players", column: "Player_ID", primary_key: "Player_ID", name: "fk_Player_plays_2"
end
