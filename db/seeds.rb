# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

puts "creating all origins"
CSV.foreach(Rails.root.join('public', "airports.csv")) do |row|
  Origin.create!(
   airport_id: row[0],
   name: row[1],
   city: row[2],
   country: row[3],
   code: row[4],
   latitude: row[6],
   longitude: row[7],
   category: 0
  )
end
