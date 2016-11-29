class CreatePlayersPlays < ActiveRecord::Migration[5.0]
  def change
    create_table :players_plays do |t|
      t.references :players, foreign_key: true
      t.references :games, foreign_key: true

      t.timestamps
    end
  end
end
