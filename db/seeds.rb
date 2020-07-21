Song.destroy_all

Song.create([
  {
    title: "Rolling in the Deep",
    released: true,
    release_year: 2011,
    artist_name: "Adele",
    genre: "pop",
  },
  {
    title: "Royals",
    released: true,
    release_year: 2013,
    artist_name: "Lorde",
    genre: "pop",
  },
  {
    title: "We Found Love",
    released: true,
    release_year: 2011,
    artist_name: "Rihanna",
    genre: "pop",
  },
  {
    title: "Get Lucky",
    released: true,
    release_year: 2013,
    artist_name: "Daft Punk",
    genre: "pop",
  }
])

puts "All done seeding!"