class FlightInfoJob < ApplicationJob
  queue_as :default

  def perform(oap_code, dap_code, dep_date,  ret_date, search_id)
    call = {
      oap_code: oap_code, dap_code: dap_code, dep_date: dep_date.to_date, ret_date: ret_date.to_date
    }
    search = Search.find(search_id)
      make_trips(call, search)
  end


   def make_trips(call, search)
    #translating the API
    client = OAuth2::Client.new(ENV["SEARCH_KEY"], ENV["SECRET_KEY"], site: 'https://test.api.amadeus.com', token_url: 'https://test.api.amadeus.com/v1/security/oauth2/token')
    token = client.client_credentials.get_token
    response = token.get("https://test.api.amadeus.com/v1/shopping/flight-offers?origin=#{call[:oap_code]}&destination=#{call[:dap_code]}&departureDate=#{call[:dep_date]}&returnDate=#{call[:ret_date]}&max=5")
    itineraries = []
    flight_option = []

    response_body = JSON.parse(response.body)
    response_body["data"].each do |flight_offer|

      next if flight_offer['offerItems'][0]["services"][0]["segments"].count > 1

      way_there = flight_offer['offerItems'][0]["services"][0]["segments"]
      way_back = flight_offer['offerItems'][0]["services"][1]["segments"]

      flight_option << {
        destination: flight_offer['offerItems'][0]["services"][0]["segments"][-1]["flightSegment"]["arrival"]["iataCode"],
        price: flight_offer['offerItems'][0]["price"]["total"],
        return_price: flight_offer['offerItems'][0]["price"]["total"]
      }

      way_there.each do |flight|
        flight_option <<
          {
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
        flight_option <<
          {
            return_origin_city: flight["flightSegment"]["departure"]["iataCode"],
            return_arrival_city: flight["flightSegment"]["arrival"]["iataCode"],
            return_departure_date: flight["flightSegment"]["departure"]["at"],
            return_arrival_date: flight["flightSegment"]["arrival"]["at"],
            return_layovers: flight.length,
              # if the layovers = 1 then its a direct flight! its its 2 then theres 1 layover!
              return_duration: flight["flightSegment"]["duration"]
            }
      end

        itineraries << flight_option
      end
    # returns a hash of hashes, the main key is the group and the value is a hash

    grouped = itineraries.group_by { |d| d[0][:destination] }
    # creating a possible trip
    # getting the average price
    # sum = 0
    # count = 0
    grouped.keys.each do |code|
      trip = Trip.create(
        destination: Destination.find_by(dap_code: code),
        search: search
        )
      grouped[code].each do |option|
        itinerary = Itinerary.create(
          trip: trip,
          user: User.first,
          info: option
          )
        Flight.create( itinerary: itinerary )
      end
      # sum += value[0][0][:price].to_f
      # count += 1
    end
    # avg_price = sum.fdiv(count)
    # return grouped
  end
end
