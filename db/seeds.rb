# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#cheap trick for deleteing the current database by modle
Airport.delete_all
# add airports
Airport.create([
  { name: 'Los Angeles',   code: 'LAX' },
  { name: 'New York',      code: 'JFK' },
  { name: 'San Francisco', code: 'SFO' },
])

Flight.delete_all
# add 10 flights
 10.times {Flight.create([
   { departure_id:   Airport.order("RANDOM()").first.id,
     arrival_id:     Airport.order("RANDOM()").first.id,
     departure_time: Date.new(2017,Random.new.rand(1..12),Random.new.rand(1..30)),
     arrival_time:   Date.new(2017,Random.new.rand(1..12),Random.new.rand(1..30)),
   }
 ])}
 
 
=begin
 a good way to do a comment block of code...

# random dates...
random_year = Random.new.rand(2000..2014) # custom range for years
random_month =Random.new.rand(1..12)
random_day  = Random.new.rand(1..30)
puts "#{Date.new(random_year,random_month,random_day)}"

# getting a random record from a table
https://stackoverflow.com/questions/5342270/rails-3-get-random-record
=end
