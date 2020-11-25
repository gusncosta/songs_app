class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.float :danceability
      t.float :energy
      t.integer :key
      t.float :loudness
      t.integer :mode
      t.float :speechiness
      t.float :acousticness
      t.float :instrumentalness
      t.float :liveness
      t.float :valence
      t.float :tempo
      t.integer :duration_ms
      t.integer :time_signature

      t.timestamps
    end
  end
end
