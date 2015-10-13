class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.string :first_name
      t.string :last_name
      t.text :about_me

      t.timestamps null: false
    end

    add_index :users, :session_token, unique: true
    add_index :users, :user_name, unique: true
    add_index :users, :password_digest
  end
end
