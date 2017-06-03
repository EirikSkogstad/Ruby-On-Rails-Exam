class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.boolean :is_admin
      t.string :watchlist

      t.timestamps
    end
  end
end
