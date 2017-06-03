class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :imdb_id
      t.string :json

      t.timestamps
    end
  end
end
