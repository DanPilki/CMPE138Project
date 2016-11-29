class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :home
      t.string :coach
      t.string :owner

      t.timestamps
    end
  end
end
