class CreatePlayerplays < ActiveRecord::Migration[5.0]
  def change
    create_table :playerplays do |t|
      t.references :players, foreign_key: true
      t.references :games, foreign_key: true

      t.timestamps
    end
  end
end
