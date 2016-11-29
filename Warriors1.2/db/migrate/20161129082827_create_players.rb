class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :F_name
      t.string :L_name
      t.date :DoB
      t.string :Height
      t.string :Weight
      t.string :Position

      t.timestamps
    end
  end
end
