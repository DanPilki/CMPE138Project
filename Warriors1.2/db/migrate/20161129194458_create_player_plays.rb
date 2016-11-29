class CreatePlayerPlays < ActiveRecord::Migration[5.0]
  def change
    create_table :player_plays do |t|
      t.references :players, foreign_key: true
      t.references :games, foreign_key: true

      t.timestamps
    end
  end
end
