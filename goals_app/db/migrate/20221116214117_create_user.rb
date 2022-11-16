class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, unique: true, null: false
      t.string :password_digest
      t.string :session_token, unique: true
      t.timestamps
    end
  end
end
