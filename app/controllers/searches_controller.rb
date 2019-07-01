require "json"
require 'oauth2'


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
  end

  def create
  end
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
