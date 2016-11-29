class CreateTeams < ActiveRecord::Migration[5.0]
  def up
    create_table :teams do |t|
      t.string "Team Name", :limit => 50, :null => false
      t.column "Home Town", :string, :limit => 15, :null => false
      t.column "Coach", :string, :limit => 30, :null => false
      t.column "Owner", :string, :limit => 15, :null => false
      t.timestamps null: false
    end
  end

	def down
	drop_table :teams
	end
end
