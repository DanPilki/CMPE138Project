class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.integer :threept_M
      t.integer :threept_A
      t.integer :rebound
      t.integer :assist
      t.integer :block
      t.integer :steal
      t.integer :foul
      t.integer :points
      t.references :players, foreign_key: true
      t.references :games, foreign_key: true

      t.timestamps
    end
  end
end
