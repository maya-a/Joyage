require 'geokit'
require 'rubygems'


class SearchesController < ApplicationController
  def new
    @search = Search.new()
  end

  def create
    @search = Search.new (search_params)
    @possible_trips = []
    middle_points = find_middle(@search)
    #if the airport is nearby any of the averages (300 km), we search for possible trips through the API
    LIST.each do |airport| #LIST is defined in the trip model as all the airports
     dot = Geokit::LatLng.new(airport[:latitude], airport[:longitude])
      middle_points.each do |point|
        if point.distance_to(dot) < 300 #km
          trip = Trip.new
          trip.destination = dot
          @possible_trips << trip
        end
      end
  end


  private

  def search_params(search)
    params.require(:search).permit(:max_budget, :dep_date, :ret_date)
  end

  # def find_middle
  #   Geokit::default_units = :kms #where to define this
  #   i = 0
  #   j = 0
  #   geo_points = []
  #   @mid = []
  #   # get origin to geocode
  #   search.origins.size.times do
  #     geo_points << Geokit::LatLng.new(search.origins[i].latitude,search.origins[i].longitude)
  #      i += 1
  #   end
  #   # get all midpoints
  #   search.geo_points.size.times do
  #      @mid << geo_points[j].midpoint_to(geo_points[j-1])
  #      j += 1
  #   end
  #   return @mid
  # end
end


