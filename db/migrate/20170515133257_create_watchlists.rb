class CreateWatchlists < ActiveRecord::Migration[5.0]
  def change
    create_table :watchlists do |t|
      t.string :username
      t.string :movie_data

      t.timestamps
    end
  end
end
