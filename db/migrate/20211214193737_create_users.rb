class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    execute 'CREATE SCHEMA a_me'
    create_table 'a_me.users' do |t|
      t.string :email, null: false
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false

      t.timestamps
    end
    add_index 'a_me.users', :email, unique: true
    add_index 'a_me.users', :username, unique: true
    add_index 'a_me.users', :session_token, unique: true
  end
end
