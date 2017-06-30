# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

print "Destroying Cowaves ..."
Cowave.destroy_all
puts "... done"
print "Destroying Cars ..."
Car.destroy_all
puts "... done"
print "Destroying waves ..."
Sport.destroy_all
puts "... done"
Wave.destroy_all
puts "... done"

puts "... Creating Cowavers"
cowaves = [
  {
    name: "Louise",
    description: "Going to surfing and kitesurfing all time, come on !"
  },
  {
    name: "Greg",
    description: "Going to surfing when there are Big Waves ;) !"
  },
  {
    name: "Charles",
    description: "Going to wake every end of day"
  },
  {
    name: "Bertrand",
    description: "Always kitesurfing !"
  },
  {
    name: "Timothy",
    description: "Going to surfing every morning"
  },
  {
    name: "Quentin",
    description: "Going to surfing the weekend"
  }
]
cowaves.each do |cowave|
  new_cowave = Cowave.new(cowave)
  new_cowave.save!
  print "."
end
puts "... Cowavers done"

puts "... Creating Cars"
cars =[
  {
    place: 3,
    brand: "Ford"
  },

  {
    place: 1,
    brand: "Wolkswagen"
  },

  {
    place: 3,
    brand: "Range Rover"
  },

  {
    place: 4,
    brand: "Wolkswagen"
  },

  {
    place: 1,
    brand: "Mini Cooper"
  },

  {
    place: 2,
    brand: "Audi"
  }
]

cars.each do |car|
  new_car = Car.new(car)
  new_car.cowave = Cowave.all.order("RANDOM()").first
  new_car.save!
  print "."
end
puts "... Cars seed done"


puts "... Creating Sports"

sports = [
  {
    name: "Kitesurf"
  },
  {
    name: "Surf"
  },
  {
    name: "Wake"
  }
]

sports.each do |sport|
  new_sport = Sport.new(sport)
  new_sport.save!
  print "... Sports seed done"
end

puts "done"



puts "... Creating Waves"
waves = [
  {
    datetime: Time.now + rand(0..10).days,
    departure_address: "103 cours Balguerie Stuttenberg 33000 Bordeaux",
    arrival_address: "La Hume",
    sport: Sport.find_by_name("Kitesurf")
  },

  {
    datetime: Time.now + rand(0..10).days,
    departure_address: "74 quai des Chartrons 33000 Bordeaux",
    arrival_address: "Lacanau sud",
    sport: Sport.find_by_name("Surf")
  },

  {
    datetime: Time.now + rand(0..10).days,
    departure_address: "37 rue des Étuves 33000 Bordeaux",
    arrival_address: "Biarritz",
    sport: Sport.find_by_name("Surf")
  },

  {
    datetime: Time.now + rand(0..10).days,
    departure_address: "3 place de la bourse 33000 Bordeaux",
    arrival_address: "Hourtin",
    sport: Sport.find_by_name("Kitesurf")
  },

  {
    datetime: Time.now + rand(0..10).days,
    departure_address: "11 cours Victor Hugo 33000 Bordeaux",
    arrival_address: "Lachanau",
    sport: Sport.find_by_name("Kitesurf")
  },

  {
    datetime: Time.now + rand(0..10).days,
    departure_address: "33 cours du Médoc 33000 Bordeaux",
    arrival_address: "Baurech",
    sport: Sport.find_by_name("Wake")
  }
]

waves.each do |wave|
  new_wave = Wave.new(wave)
  new_wave.car = Car.all.order("RANDOM()").first
  new_wave.save!
  print "."
end
puts "... Waves seed done"
