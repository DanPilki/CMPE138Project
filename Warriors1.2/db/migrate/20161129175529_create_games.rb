class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :home_away
      t.date :occasion
      t.string :results
      t.string :score
      t.string :opponents
      t.string :win_lose_stat

      t.timestamps
    end
  end
end
