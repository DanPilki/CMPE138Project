class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :player do |t|
      t.string :F_name
      t.string :L_name
      t.date :DOB
      t.string :weight
      t.string :height
      t.string :position
      t.integer :player_id

      t.timestamps
    end
  end
end
