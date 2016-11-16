# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  p = Playlist.create(name: Faker::Book.title, genre: ["70s","80s", "90s", "Country"].sample)
  5.times do
    p.songs << Song.create(title: Faker::Book.title, artist: Faker::Superhero.name, bpm: (100..170).to_a.sample )
  end
end
