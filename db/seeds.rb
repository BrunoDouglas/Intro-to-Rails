# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
#Loading Cars Manufacturers
#https://raw.githubusercontent.com/vega/vega/master/docs/data/cars.json
file = File.read('DataSources/cars.json')
JSON.parse(file).map {|x| [x['Name'], x['Origin']]}.each do |n|



end

#Loading Neibourhoods
#https://data.winnipeg.ca/resource/w4xz-nc35.json?$select=distinct(neighbourhood)&$limit=306000
file = File.read('DataSources/winnipeg_neighbourhoods.json')
JSON.parse(file).map {|x| x['neighbourhood_1']}.each do |n|
  hood = Neighbourhood.create(:name => n)

  #Loading People
  (Faker::Number.between(0, 10)).times do
    hood.people.create(:name => Faker::Name.name,
                       :age  => Faker::Number.between(19, 70));

  end
end


