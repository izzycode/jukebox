json.extract! playlist, :id, :name, :genre, :created_at, :updated_at
json.url playlist_url(playlist, format: :json)