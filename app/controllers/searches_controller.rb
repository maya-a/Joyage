
require "json"
require 'oauth2'



class SearchesController < ApplicationController
  def new


    # client = OAuth2::Client.new("tEDDbA3LWoIm4FsWZ4QFFNkvGDjaJlOr", "AzXPuVGJkX4ap2Df", site: 'https://test.api.amadeus.com', token_url: 'https://test.api.amadeus.com/v1/security/oauth2/token')
    # token = client.client_credentials.get_token
    # response = token.get('https://test.api.amadeus.com/v1/shopping/flight-offers?origin=NYC&destination=MAD&departureDate=2019-08-01&returnDate=2019-09-01&max=2')
    # itineraries = []
    # response_body = JSON.parse(response.body)
    # response_body["data"].each do |flight_offer|

    #    flight_option = {
    #     origin_city: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["departure"]["iataCode"],
    #     arrival_city: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["arrival"]["iataCode"],
    #     departure_date: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["departure"]["at"],
    #     arrival_date: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["arrival"]["at"],
    #     layovers: flight_offer['offerItems'][0]["services"][0]["segments"].length,
    #     # if the layovers = 1 then its a direct flight! its its 2 then theres 1 layover!
    #     price: flight_offer['offerItems'][0]["price"]["total"],
    #     duration: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["duration"],
    #     return_origin_city: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["departure"]["iataCode"],
    #     return_arrival_city: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["arrival"]["iataCode"],
    #     return_departure_date: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["departure"]["at"],
    #     return_arrival_date: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["arrival"]["at"],
    #     return_layovers: flight_offer['offerItems'][0]["services"][1]["segments"].length,
    #     # if the layovers = 1 then its a direct flight! its its 2 then theres 1 layover!
    #     return_price: flight_offer['offerItems'][0]["price"]["total"],
    #     return_duration: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["duration"]
    #     }



    #   itineraries << flight_option
    #   end
      # carrier_code = flight_offer["services"][0]["segments"][0]["flightSegment"]["carrierCode"]
      # airline: response_body["dictionaries"]["carriers"]["#{carrier_code}"]

    @search = Search.new()

  end

  def create
    @origins = params[:search][:origin]
    @search = Search.new(search_params)
    @origins = SearchOrigin.new()
    @possible_trips = []
    Destination.all.each do |destination|
      @search.origin.each do |origin|
        if destination.category == @search.category
          # oap_code = origin.code
          # dap_code = destination.dap_code
          # dep_date = @search.dep_date.slice(0..9)
          # ret_date = @search.ret_date
          possible_trips << {
                             oap_code: origin.code,
                             dap_code: destination.dap_code,
                             dep_date: @search.dep_date.slice(0..9),
                             ret_date: @search.ret_date
                            }
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

  def search_params
    params.require(:search).permit(:max_budget, :dep_date, :ret_date, :origin)
  end

  def get_itinerary(call) #call is a hash
    client = OAuth2::Client.new("tEDDbA3LWoIm4FsWZ4QFFNkvGDjaJlOr", "AzXPuVGJkX4ap2Df", site: 'https://test.api.amadeus.com', token_url: 'https://test.api.amadeus.com/v1/security/oauth2/token')
    token = client.client_credentials.get_token
    #  response = token.get(`https://test.api.amadeus.com/v1/shopping/flight-offers?origin=#{call.oap_code}&destination=#{call.dap_code}&departureDate=#{call.dep_date}&returnDate=#{call.ret_date}&max=2`)
    response = token.get(`https://test.api.amadeus.com/v1/shopping/flight-offers?origin=HAS&destination=ZRH&departureDate=2019-08-01&returnDate=2019-09-01&max=2`)
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
    end

      def make_trips
        itineraries = get_itinerary(call)
        # retuens a hash of hashes, the main key is the group and the value is a hash
        itineraries.group_by { |d| d[:arrival_city] }
        raise

        # itineraries.each do |key,value|
        #   Trip.create(
        #               destination: destination.find_by(key)
        #               search_id: @search
        #               )
        #  end
       end

       def find_average
          default = []
          sum = 0
          #getting the default flight which we'll show to the user
          itineraries.each do |itinerary|
            default << itinerary.first
          end
          default.each do |flight|
            sum += flight[:price] + flight[:return_price]
          end
          average = sum.fdiv(default.size)
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

