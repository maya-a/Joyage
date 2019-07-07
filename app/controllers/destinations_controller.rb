class DestinationsController < ApplicationController
  def show
    @trips = Trip.where(destination_id: params[:id], search_id: params[:search_id])
    @flights_infos = []
    @choices = []
    @opt
      # getting first flight only

    @trips.each do |trip|
      trip.itineraries.each_with_index do |itinerary, i|
        flight_info = {
          itinerary_index: itinerary.id,
          destination_code: eval(itinerary.info)[0][:destination],
          price:            eval(itinerary.info)[0][:price],
          destination_city: Destination.find(trip.destination.id).d_city,
          origin_city_name: Origin.find_by(code: eval(itinerary.info)[1][:origin_city]).city,


          origin_city:    eval(itinerary.info)[1][:origin_city],
          arrival_city:   eval(itinerary.info)[1][:arrival_city],
          departure_date: eval(itinerary.info)[1][:departure_date],
          arrival_date:   eval(itinerary.info)[1][:arrival_date],
          layovers:       eval(itinerary.info)[1][:layovers],
          duration:       eval(itinerary.info)[1][:duration],

          return_origin_city:    eval(itinerary.info)[2][:return_origin_city],
          return_arrival_city:   eval(itinerary.info)[2][:return_arrival_city],
          return_departure_date: eval(itinerary.info)[2][:return_departure_date],
          return_arrival_date:   eval(itinerary.info)[2][:return_arrival_date],
          return_layovers:       eval(itinerary.info)[2][:return_layovers],
          return_duration:       eval(itinerary.info)[2][:return_duration]
        }
        @choices << flight_info
      end
    end
        @choices = @choices.sort_by { |choice| choice[:price].to_f }
        @choices = @choices.group_by {|origin| origin[:origin_city_name]}
        @choices.values.each do |value|
          @flights_infos << value.first
        end
  end
end


