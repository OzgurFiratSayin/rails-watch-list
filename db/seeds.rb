# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

puts "Cleaning database..."
Movie.destroy_all
puts "Creating movies..."

for i in 1..20
  url = "https://api.themoviedb.org/3/movie/top_rated?api_key=4e78a8d8b606416f2cc86b9fe1c2e7b6&language=en-US&page=#{i}"
  movies_serialized = URI.open(url).read
  movies = JSON.parse(movies_serialized)
  movies["results"].each { |movie|
    Movie.create(title: movie["title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/original#{movie["poster_path"]}", rating: movie["vote_average"].round(1))
  }
end

puts "Finished!"
