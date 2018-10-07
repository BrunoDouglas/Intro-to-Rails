# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Loading Neibourhoods
#https://data.winnipeg.ca/resource/w4xz-nc35.json?$select=distinct(neighbourhood)&$limit=306000
file = File.read('DataSources/winnipeg_neighbourhoods.json')
trees = JSON.parse(file).map {|x| x['neighbourhood_1']}.each do |n|
  Neighbourhood.create(:name => n)
end


