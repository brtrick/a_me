class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :a_me_users do |t|
      t.string :email, null: false
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false

      t.timestamps
    end
    add_index :a_me_users, :email, unique: true
    add_index :a_me_users, :username, unique: true
    add_index :a_me_users, :session_token, unique: true
  end
end
