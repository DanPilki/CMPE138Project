class CreateOppTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :opp_teams do |t|
      t.string :name
      t.string :home
      t.string :coach
      t.string :owner

      t.timestamps
    end
  end
end
