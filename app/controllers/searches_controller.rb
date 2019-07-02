
require "json"
require 'oauth2'



class SearchesController < ApplicationController
  def new
    client = OAuth2::Client.new("tEDDbA3LWoIm4FsWZ4QFFNkvGDjaJlOr", "AzXPuVGJkX4ap2Df", site: 'https://test.api.amadeus.com', token_url: 'https://test.api.amadeus.com/v1/security/oauth2/token')
    token = client.client_credentials.get_token
    response = token.get('https://test.api.amadeus.com/v1/shopping/flight-offers?origin=NYC&destination=MAD&departureDate=2019-08-01&returnDate=2019-09-01&max=2')
    itineraries = []
    response_body = JSON.parse(response.body)
    response_body["data"].each do |flight_offer|

       flight_option = {
        origin_city: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["departure"]["iataCode"],
        arrival_city: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["arrival"]["iataCode"],
        departure_date: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["departure"]["at"],
        arrival_date: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["arrival"]["at"],
        layovers: flight_offer['offerItems'][0]["services"][0]["segments"].length,
        # if the layovers = 1 then its a direct flight! its its 2 then theres 1 layover!
        price: flight_offer['offerItems'][0]["price"]["total"],
        duration: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["duration"],
        return_origin_city: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["departure"]["iataCode"],
        return_arrival_city: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["arrival"]["iataCode"],
        return_departure_date: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["departure"]["at"],
        return_arrival_date: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["arrival"]["at"],
        return_layovers: flight_offer['offerItems'][0]["services"][1]["segments"].length,
        # if the layovers = 1 then its a direct flight! its its 2 then theres 1 layover!
        return_price: flight_offer['offerItems'][0]["price"]["total"],
        return_duration: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["duration"]
        }


      itineraries << flight_option

      end

      # carrier_code = flight_offer["services"][0]["segments"][0]["flightSegment"]["carrierCode"]
      # airline: response_body["dictionaries"]["carriers"]["#{carrier_code}"]

    @search = Search.new()

  end

  def create
    @search = Search.new(search_params)
    @possible_trips = []
    @search.origins.each do |origin|
      Destination.all.each do |destination|
        if destination.category == @search.category
          oap_code = origin.code
          dap_code = destination.dap_code
          dep_date = @search.dep_date.slice(0..9)
          ret_date = @search.ret_date
          possible_trips << [oap_code, dap_code, dep_date, ret_date]
        end
      end

      possible_trips.each do |call|
        get_itinerary(call)
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

  def get_itinerary(call)
    client = OAuth2::Client.new("tEDDbA3LWoIm4FsWZ4QFFNkvGDjaJlOr", "AzXPuVGJkX4ap2Df", site: 'https://test.api.amadeus.com', token_url: 'https://test.api.amadeus.com/v1/security/oauth2/token')
    token = client.client_credentials.get_token
    response = token.get(`https://test.api.amadeus.com/v1/shopping/flight-offers?origin=#{call[0]}&destination=#{call[1]}&departureDate=#{call[2]}&returnDate=#{call[3]}&max=2`)
    itineraries = []
    response_body = JSON.parse(response.body)
    response_body["data"].each do |flight_offer|

       flight_option = {
        origin_city: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["departure"]["iataCode"],
        arrival_city: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["arrival"]["iataCode"],
        departure_date: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["departure"]["at"],
        arrival_date: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["arrival"]["at"],
        layovers: flight_offer['offerItems'][0]["services"][0]["segments"].length,
        # if the layovers = 1 then its a direct flight! its its 2 then theres 1 layover!
        price: flight_offer['offerItems'][0]["price"]["total"],
        duration: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["duration"],
        return_origin_city: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["departure"]["iataCode"],
        return_arrival_city: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["arrival"]["iataCode"],
        return_departure_date: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["departure"]["at"],
        return_arrival_date: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["arrival"]["at"],
        return_layovers: flight_offer['offerItems'][0]["services"][1]["segments"].length,
        # if the layovers = 1 then its a direct flight! its its 2 then theres 1 layover!
        return_price: flight_offer['offerItems'][0]["price"]["total"],
        return_duration: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["duration"]
        }
      itineraries << flight_option
      end
      itineraries.each do
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

