class Song < ApplicationRecord
  has_and_belongs_to_many :playlists
  validates_presence_of :title, :artist, :bpm
end
