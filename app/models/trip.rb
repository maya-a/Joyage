class Trip < ApplicationRecord
  belongs_to :search
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  require "csv"
  airports = []
  CSV.foreach("../../db/airports.csv") do |row|
    airports << {
                   id: row[0],
                   name: row[1],
                   city: row[2],
                   country: row[3],
                   code: row[4],
                   latitude: row[6],
                   longitude: row[7]
                }
  # CSV row
  # [0] airport ID
  # [1] airport name
  # [2] city name
  # [3] country name
  # [4] code (IATA/FAA)
  # [5] ICAO
  # [6] latitude
  # [7] longitude
  # [8] elevation (height)
  # [9] UTC
  # [10] DST (AREA)
  # [11] "airport"
  # [12] "OurAirports"
  end
  end
