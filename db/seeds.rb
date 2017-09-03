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


=begin
 a good way to do a comment block of code...

Flight.delete_all
 # add flights
 Flight.create([
   { departure_id: Airport.order("RANDOM()").first.id,
     arrival_id: Airport.order("RANDOM()").first.id,
     # departure_time: rand(1.years).from_now,
     # arrival_time: rand(1.years).from_now,
   }

random_year = Random.new.rand(2000..2014) # custom range for years
random_month =Random.new.rand(1..12)
random_day  = Random.new.rand(1..30)
puts "#{Date.new(random_year,random_month,random_day)}"
 ])

# getting a random record from a table
https://stackoverflow.com/questions/5342270/rails-3-get-random-record
=end
