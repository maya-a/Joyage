
require "json"
require 'oauth2'

require 'geokit'
require 'rubygems'


class SearchesController < ApplicationController
  def new


    client = OAuth2::Client.new("tEDDbA3LWoIm4FsWZ4QFFNkvGDjaJlOr", "AzXPuVGJkX4ap2Df", site: 'https://test.api.amadeus.com', token_url: 'https://test.api.amadeus.com/v1/security/oauth2/token')
    token = client.client_credentials.get_token
    response = token.get('https://test.api.amadeus.com/v1/shopping/flight-offers?origin=NYC&destination=MAD&departureDate=2019-08-01&returnDate=2019-09-01&max=2')
    flights = []
    response_body = JSON.parse(response.body)
    response_body["data"].each do |flight_offer|

       flight = {
        origin_city1: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["departure"]["iataCode"],
        arrival_city1: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["arrival"]["iataCode"],
        departure_date1: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["departure"]["at"],
        arrival_date1: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["arrival"]["at"],
        layovers1: flight_offer['offerItems'][0]["services"][0]["segments"].length,
        # if the layovers = 1 then its a direct flight! its its 2 then theres 1 layover!
        price1: flight_offer['offerItems'][0]["price"]["total"],
        duration1: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["duration"],
        origin_city2: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["departure"]["iataCode"],
        arrival_city2: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["arrival"]["iataCode"],
        departure_date2: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["departure"]["at"],
        arrival_date2: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["arrival"]["at"],
        layovers2: flight_offer['offerItems'][0]["services"][1]["segments"].length,
        # if the layovers = 1 then its a direct flight! its its 2 then theres 1 layover!
        price2: flight_offer['offerItems'][0]["price"]["total"],
        duration: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["duration"]
        }



      flights << flight
      end
    raise
      # carrier_code = flight_offer["services"][0]["segments"][0]["flightSegment"]["carrierCode"]
      # airline: response_body["dictionaries"]["carriers"]["#{carrier_code}"]

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

#INSIDE EACH FLIGHT OFFER

# response_body["data"][0]["offerItems"][0]["services"][0]["segments"][0]["flightSegment"]["departure"]["iataCode"]
# will return the airport code of departure(or arrival)

# response_body["data"][0]["offerItems"][0]["services"][0]["segments"][0]["flightSegment"]["departure"]["at"]
# will return the time of departure(or arrival)

# response_body["data"][0]["offerItems"][0]["price"]["total"]
# will return the total price of the itinerary found

# response_body["data"][0]["offerItems"][0]["services"][0]["segments"].length
# Will return how many legs there are in the flights example (returns 2 means 1 stopover..)

# response_body["data"][0]["offerItems"][0]["services"][0]["segments"][0]["flightSegment"]["duration"]
# will return the duration of that specific flight


# carrier_code = response_body["data"][0]["offerItems"][0]["services"][0]["segments"][0]["flightSegment"]["carrierCode"]
# response_body["dictionaries"]["carriers"]["#{carrier_code}"]
# will return the carrier of the airline



