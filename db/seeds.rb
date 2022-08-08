# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# Flight.destroy_all

# codes=%w[AMD BLR CCU MAA DEL HYD BOM VNS PUT]
# codes.each do |codes| 
#     Airport.create(code: "#{codes}")
# end

Flight.create(arrival_id: 3, departure_id: 4, arrival_time: DateTime.now, departure_time: DateTime.now)
Flight.create(arrival_id: 1, departure_id: 2, arrival_time: "2022-08-06 16:14:00.000000000 +0000", departure_time: "2022-09-06 16:14:00.000000000 +0000")
Flight.create(arrival_id: 2, departure_id: 3, arrival_time: "2022-09-06 16:14:00.000000000 +0000", departure_time: "2022-09-15 16:14:00.000000000 +0000")
Flight.create(arrival_id: 3, departure_id: 4, arrival_time: "2022-10-06 16:14:00.000000000 +0000", departure_time: "2022-10-09 16:14:00.000000000 +0000")
Flight.create(arrival_id: 5, departure_id: 8, arrival_time: "2022-11-15 16:14:00.000000000 +0000", departure_time: "2022-11-20 16:14:00.000000000 +0000")


# Booking.create(flight_id: 1,name: "Aryan", email: "aryan.pal@gmail.com")
# Booking.create(flight_id: 1,name: "Adity", email: "aditya@gmail.com")
# Booking.create(flight_id: 1,name: "Raj", email: "aditya@gmail.com")


# airports =Airport.all.to_a.permutation(2).to_a
# airports.sample(5).each do |id|
#     departure = Faker::Time.between(from: DateTime.now.utc, to: 7.days.from_now,format: :short)
#     arrival = Faker::Time.between(from: departure, to: DateTime.parse(departure)+17.hours ,format: :short)
#     Flight.create(from_airport: id[0], to_airport: id[1], arrival_time: arrival, departure_time: departure)
# end   

# <Flight id: 2, arrival: "2022-08-06 16:14:00.000000000 +0000", departure: "2022-08-19 20:18:00.000000000 +0000", airport_arrival_id: 5, airport_departure_id: 4, created_at: "2022-08-04 08:45:50.489356000 +0000", updated_at: "2022-08-04 08:45:50.489356000 +0000"> 
