class CreateLogins < ActiveRecord::Migration[5.0]
  def change
    create_table :logins do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
