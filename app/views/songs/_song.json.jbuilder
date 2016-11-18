json.extract! song, :id, :title, :artist, :bpm, :created_at, :updated_at
json.url song_url(song, format: :json)