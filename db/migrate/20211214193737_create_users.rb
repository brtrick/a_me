class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    # ApplicationRecord.connection.create_schema('a_me')
    create_table 'authenticate_me.users' do |t|
      t.string :email, null: false
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :username, unique: true
    add_index :users, :session_token, unique: true
  end
end
