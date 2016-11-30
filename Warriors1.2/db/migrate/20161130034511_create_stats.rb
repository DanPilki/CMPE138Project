class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.integer :point
      t.integer :assist
      t.integer :rebound
      t.integer :steal
      t.integer :foul
      t.references :players, foreign_key: true
      t.references :games, foreign_key: true

      t.timestamps
    end
  end
end
