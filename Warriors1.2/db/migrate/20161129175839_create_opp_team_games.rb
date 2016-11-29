class CreateOppTeamGames < ActiveRecord::Migration[5.0]
  def change
    create_table :opp_team_games do |t|
      t.references :opp_teams, foreign_key: true
      t.references :games, foreign_key: true

      t.timestamps
    end
  end
end
