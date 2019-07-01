class Trip < ApplicationRecord
  require "csv"

  belongs_to :search

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  has_many :initerarys

  require "csv"
  airports = []
  CSV.foreach("../../db/airports.csv") do |row|
    airports << {
                   id: row[0],
                   name: row[1],
                   city: row[2],
                   country: row[3],
                   code: row[4],
                   Latitude: row[6],
                   Longitude: row[7]
                }
    # a CSV row contains
    # row[0] ID
    # row[1] airport name
    # row[2] city name
    # row[3] country name
    # row[4] code (IATA/FAA)
    # row[5] ICAO
    # row[6] latitude
    # row[7] longitude
    # row[8] elavation
    # row[9] UTC
    # row[10] DST
    # row[11] "airports"
    # row[12] "OurAirports"

    end

  a = Geokit::LatLng.new(13.0627081,80.274658)
  b = Geokit::LatLng.new(12.8550615,80.2264393)
  m1 = a.midpoint_to(b)
  m2 = b.midpoint_to(a)
  if m1.distance_to( m2 ) > 0
    puts "Mid-points are separate"
  else
    puts "Mid-points are the same location"
  end
>>>>>>> b0bfff1ab122ec26a1c4067f3388ed2b0942d23f
  end
