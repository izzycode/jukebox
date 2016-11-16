class PlaylistsSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists_songs, id: false do |t|
      t.belongs_to :song, index: true
      t.belongs_to :playlist, index: true
    end
  end
end
