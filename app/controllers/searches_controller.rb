require 'geokit'
require 'rubygems'


class SearchesController < ApplicationController
  def new
    @search = Search.new()
  end

  def create
    @search = Search.new(search_params)
    @possible_trips = []
    @search.origins.each do |origin|
      Trip.all.each do |trip|
        if trip.category == @search.category
          oap_code = origin.code
          dap_code = trip.dap_code
          dep_date = @search.dep_date.slice(0..9)
          ret_date = @search.ret_date
          possible_trips << [oap_code, dap_code, dep_date, ret_date]
        end
      end
    end
    #if the category matches, create trip (API) call

    end

    #if the airport is nearby any of the averages (300 km), we search for possible trips through the API
  end


  private

  def search_params(search)
    params.require(:search_).permit(:max_budget, :dep_date, :ret_date, :origins)
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
    # LIST.each do |airport| #LIST is defined in the trip model as all the airports
    #  dot = Geokit::LatLng.new(airport[:latitude], airport[:longitude])
    #   middle_points.each do |point|
    #     if point.distance_to(dot) < 300 #km
    #       trip = Trip.new
    #       trip.destination = dot
    #       @possible_trips << trip
    #     end
    #   end
end


