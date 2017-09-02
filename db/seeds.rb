# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#cheap trick for deleteing the current database by modle
Airport.delete_all

Airport.create([
  { name: 'Los Angeles',   code: 'LAX' },
  { name: 'New York',      code: 'JFK' },
  { name: 'San Francisco', code: 'SFO' },
])

=begin

Flight.create([
  { departure_id: , arrival_id: ,
    departure_time: , arrival_time: ,
    ticket_id: }
])

=end
