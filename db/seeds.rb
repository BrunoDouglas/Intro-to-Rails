# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
#Loading Neibourhoods
#https://data.winnipeg.ca/resource/w4xz-nc35.json?$select=distinct(neighbourhood)&$limit=306000
file = File.read('DataSources/winnipeg_neighbourhoods.json')
JSON.parse(file).map {|x| x['neighbourhood_1']}.each do |n|

  hood = Neighbourhood.where(:name => n).first
  if hood.nil? && !n.blank?
    hood = Neighbourhood.create(:name => n)
  end
  unless hood.nil?
     #Loading People
    (Faker::Number.between(0, 10)).times do
      hood.people.create(:name => Faker::Name.name,
                        :age  => Faker::Number.between(19, 70));
    end
  end
end

#Loading Cars Manufacturers
#https://raw.githubusercontent.com/vega/vega/master/docs/data/cars.json
file = File.read('DataSources/cars.json')
JSON.parse(file).map {|x|  [x['Name'].split(' ')[1..-1].join(' ').capitalize,
                            x['Name'].partition(" ").first.capitalize,
                            x['Origin']] }.each do |v|

  model   = v[0]
  make    = v[1]
  country = v[2]

  manufacturer = Manufacturer.where(:name => make).first
  if manufacturer.nil?
    manufacturer = Manufacturer.create(:name => make)
  end

  origin = Origin.where(:name => country).first
  if origin.nil?
    origin = Origin.create(:name => country)
  end

  vehicle = Vehicle.create(:name => model,
                            :manufacturer => manufacturer,
                            :person => Person.order("RANDOM()").limit(1).first,
                            :origin => origin)
end




