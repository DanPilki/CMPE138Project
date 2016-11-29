class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.date :date
      t.string :location
      t.string :results
      t.string :score
      t.string :win_lose_stats

      t.timestamps
    end
  end
end
