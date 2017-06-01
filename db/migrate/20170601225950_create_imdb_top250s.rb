class CreateImdbTop250s < ActiveRecord::Migration[5.0]
  def change
    create_table :imdb_top250s do |t|
      t.string :imdbID
      t.text :title

      t.timestamps
    end
  end
end
