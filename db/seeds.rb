# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
VehicleOwnership.destroy_all
Neighbourhood.destroy_all
Person.destroy_all
Vehicle.destroy_all

#Loading Neibourhoods
#file = File.read('db/datasources/winnipeg_neighbourhoods.json')
file = open('https://data.winnipeg.ca/resource/w4xz-nc35.json?$select=distinct(neighbourhood)&$limit=50') {|x|x.read}
JSON.parse(file).map {|x| x['neighbourhood_1']}.each do |n|

  hood = Neighbourhood.where(:name => n).first
  if hood.nil? && !n.blank?
    hood = Neighbourhood.create(:name => n)
  end
  unless hood.nil?
     #Loading People
    (Faker::Number.between(0, 7)).times do
      hood.people.create(:name => Faker::Name.unique.name,
                        :age  => Faker::Number.between(19, 70));
    end
  end
end

#Loading Cars Manufacturers
#file = File.read('db/datasources/cars.json')
file = open('https://raw.githubusercontent.com/vega/vega/master/docs/data/cars.json'){|x|x.read}
JSON.parse(file).map {|x|  [x['Name'].split(' ')[1..-1].join(' ').capitalize,
                            x['Name'].partition(" ").first.capitalize,
                            x['Origin']] }.each do |v|

  model        = v[0]
  manufacturer = v[1]
  origin       = v[2]

  vehicle = Vehicle.create(:name => model,
                           :manufacturer => manufacturer,
                           :origin => origin)


  (Faker::Number.between(0, 20)).times do
    person = Person.all.sample;
    VehicleOwnership.create(person: person,
                            vehicle: vehicle)

    puts "Saved the vehicle #{vehicle.name} to #{person.name}"
  end

end

puts "After seeding we got #{Person.count} people"
puts "After seeding we got #{Neighbourhood.count} Neighbourhoods"
puts "After seeding we got #{Vehicle.count} Vehicles"
puts "After seeding we got #{VehicleOwnership.count} Vehicles Ownerships"




