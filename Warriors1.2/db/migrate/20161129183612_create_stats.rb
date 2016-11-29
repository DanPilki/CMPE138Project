class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.integer :rebounds
      t.integer :assists
      t.integer :fouls
      t.integer :points
      t.string :threept_stat
      t.string :freethrowstat
      t.string :feildgoal_stat
      t.integer :steals
      t.integer :blocks
      t.integer :turnovers
      t.references :games, foreign_key: true
      t.references :players, foreign_key: true

      t.timestamps
    end
  end
end
