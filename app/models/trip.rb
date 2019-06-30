class Trip < ApplicationRecord
  belongs_to :search

  # require "csv"
  # airports = []
  # CSV.foreach("../../db/airports.csv") do |row|
  #   airports << {
  #                  id: row[0],
  #                  name: row[1],
  #                  city: row[2],
  #                  country: row[3],
  #                  code: row[4],
  #                  Latitude: row[6],
  #                  Longitude: row[7]
  #               }
  # end
  end
