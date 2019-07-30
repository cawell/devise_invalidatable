class DeviseCreateUserSessions < ActiveRecord::Migration[4.2]
  def up
    create_table :user_sessions do |t|
      t.integer :<%= file_name %>_id
      t.string :session_id
      t.string :ip
      t.string :user_agent
      t.timestamps
    end
    add_index(:user_sessions, :<%= file_name %>_id)
    add_index(:user_sessions, :session_id, unique: true)
  end

  def down
    drop_table(:user_sessions)
  end
end
