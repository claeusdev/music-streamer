class AddGenreToSongs < ActiveRecord::Migration[5.1]
  def change
    add_reference :songs, :genre, foreign_key: true
  end
end
