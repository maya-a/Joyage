
require "json"
require 'oauth2'



class SearchesController < ApplicationController
  def new
      # carrier_code = flight_offer["services"][0]["segments"][0]["flightSegment"]["carrierCode"]
      # airline: response_body["dictionaries"]["carriers"]["#{carrier_code}"]
    @search = Search.new
  end

  def create
    #!!!MISSING!!! the format of the origins from the form after making the search work
    # search from form
    @search = Search.create!(max_budget:770, dep_date:"2019-7-17",ret_date:"2019-8-1", user: User.first, category: 2)
    # @search = Search.create!(search_params,)
    # origins from form
    @origins = params[:search][:origin]
    @origin_list = [] #will contain the search-origin relations
    # creating an origin list with new instances
    @origins.each do |origin|
      origin_instance = Origin.find_by(city: origin.capitalize)
      @origin_list << SearchOrigin.create(search: @search, origin: origin_instance)
    end
    # creating all possible destination-origin combinations for the API calls
    possible_trips = []
    Destination.all.each do |destination|
      @origin_list.each do |origin|
        if destination.category == @search.category
          # information needed for the API call:
          # oap_code = origin.code
          # dap_code = destination.dap_code
          # dep_date = @search.dep_date.slice(0..9)
          # ret_date = @search.ret_date
          possible_trips << {
                             oap_code: origin.origin.code,
                             dap_code: destination.dap_code,
                             dep_date: @search.dep_date, #.slice(0..9),
                             ret_date: @search.ret_date
                            }
        end
      end
    end
    possible_trips.each do |call|
      make_trips(call, @search)
    end
    redirect_to search_trips_path(@search)
  end



  private

  def search_params
    params.require(:search).permit(:max_budget, :dep_date, :ret_date, :origin)
  end

  # def get_itinerary(call) #call is a hash
  #   client = OAuth2::Client.new("tEDDbA3LWoIm4FsWZ4QFFNkvGDjaJlOr", "AzXPuVGJkX4ap2Df", site: 'https://test.api.amadeus.com', token_url: 'https://test.api.amadeus.com/v1/security/oauth2/token')
  #   token = client.client_credentials.get_token
  #   #  response = token.get(`https://test.api.amadeus.com/v1/shopping/flight-offers?origin=#{call.oap_code}&destination=#{call.dap_code}&departureDate=#{call.dep_date}&returnDate=#{call.ret_date}&max=2`)
  #   response = token.get(`https://test.api.amadeus.com/v1/shopping/flight-offers?origin=HAS&destination=ZRH&departureDate=2019-08-01&returnDate=2019-09-01&max=2`)
  #   itineraries = []
  #   response_body = JSON.parse(response.body)
  #   response_body["data"].each do |flight_offer|

  #      flight_option = {
  #       origin_city: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["departure"]["iataCode"],
  #       arrival_city: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["arrival"]["iataCode"],
  #       departure_date: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["departure"]["at"],
  #       arrival_date: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["arrival"]["at"],
  #       layovers: flight_offer['offerItems'][0]["services"][0]["segments"].length,
  #       # if the layovers = 1 then its a direct flight! its its 2 then theres 1 layover!
  #       price: flight_offer['offerItems'][0]["price"]["total"],
  #       duration: flight_offer['offerItems'][0]["services"][0]["segments"][0]["flightSegment"]["duration"],
  #       return_origin_city: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["departure"]["iataCode"],
  #       return_arrival_city: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["arrival"]["iataCode"],
  #       return_departure_date: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["departure"]["at"],
  #       return_arrival_date: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["arrival"]["at"],
  #       return_layovers: flight_offer['offerItems'][0]["services"][1]["segments"].length,
  #       # if the layovers = 1 then its a direct flight! its its 2 then theres 1 layover!
  #       return_price: flight_offer['offerItems'][0]["price"]["total"],
  #       return_duration: flight_offer['offerItems'][0]["services"][1]["segments"][0]["flightSegment"]["duration"]
  #       }
  #     itineraries << flight_option
  #     end
  #   end

  def make_trips(call, seacrh)
    #translating the API
    client = OAuth2::Client.new("tEDDbA3LWoIm4FsWZ4QFFNkvGDjaJlOr", "AzXPuVGJkX4ap2Df", site: 'https://test.api.amadeus.com', token_url: 'https://test.api.amadeus.com/v1/security/oauth2/token')
    token = client.client_credentials.get_token
    response = token.get('https://test.api.amadeus.com/v1/shopping/flight-offers?origin=IAD&destination=TLV&departureDate=2019-08-01&returnDate=2019-09-01&max=2')
    itineraries = []
    response_body = JSON.parse(response.body)
    response_body["data"].each do |flight_offer|
          way_there = flight_offer['offerItems'][0]["services"][0]["segments"]
          way_back = flight_offer['offerItems'][0]["services"][0]["segments"]

      flight_option = [{
                        destination: flight_offer['offerItems'][0]["services"][0]["segments"][-1]["flightSegment"]["arrival"]["iataCode"],
                        price: flight_offer['offerItems'][0]["price"]["total"],
                        return_price: flight_offer['offerItems'][0]["price"]["total"]
                      }]

      way_there.each do |flight|
        flight_option << {
          origin_city: flight["flightSegment"]["departure"]["iataCode"],
          arrival_city: flight["flightSegment"]["arrival"]["iataCode"],
          departure_date: flight["flightSegment"]["departure"]["at"],
          arrival_date: flight["flightSegment"]["arrival"]["at"],
          layovers: flight.length,
          # if the layovers = 1 then its a direct flight! its its 2 then theres 1 layover!
          duration: flight["flightSegment"]["duration"]
        # flight_option[:destination]
      }
      end

      way_back.each do |flight|
        flight_option << {
          return_origin_city: flight["flightSegment"]["departure"]["iataCode"],
          return_arrival_city: flight["flightSegment"]["arrival"]["iataCode"],
          return_departure_date: flight["flightSegment"]["departure"]["at"],
          return_arrival_date: flight["flightSegment"]["arrival"]["at"],
          return_layovers: flight.length,
          # if the layovers = 1 then its a direct flight! its its 2 then theres 1 layover!
          return_duration: flight["flightSegment"]["duration"]
      }
      end
        # flight_option[:destination]
      itineraries << flight_option
    end

    # returns a hash of hashes, the main key is the group and the value is a hash
    grouped = itineraries.group_by { |d| d[0][:destination] }
    #creating a possible trip
    #getting the average price
    sum = 0
    count = 0
    grouped.each do |key, value|
      Trip.create(
                  destination_id: Destination.find_by(dap_code: key).id,
                  search_id: @search.id
                  )
      sum += value[0][0][:price].to_f
      count += 1
    end
    @average = sum.fdiv(count)
  end
end

#   def find_average(itineraries)

#     #getting total price
# end

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
      # }
