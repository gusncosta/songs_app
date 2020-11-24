# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
contents = File.read('track.json')
foo = Kernel.eval(contents)

i = 0

while i < 100 do
    Song.create(title: foo[i][:title], artist: foo[i][:artist], 
                danceability: foo[i][:danceability], 
                energy: foo[i][:energy], key: foo[i][:key], 
                loudness: foo[i][:loudness], mode: foo[i][:mode], 
                speechiness: foo[i][:speechiness], 
                acousticness: foo[i][:acousticness], 
                instrumentalness: foo[i][:instrumentalness], 
                liveness: foo[i][:liveness], 
                valence: foo[i][:valence], tempo: foo[i][:tempo], 
                duration_ms: foo[i][:duration_ms], 
                time_signature: foo[i][:time_signature])
                
    i = i + 1            
end


