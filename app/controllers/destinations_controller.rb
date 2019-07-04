class DestinationsController < ApplicationController
  def show
    @trips = Trip.where(destination_id: params[:id], search_id: params[:search_id])
    @flight_info = []
      # getting first flight only
      @trips.each do |trip|
        trip.itineraries.each do |itinerary|
          @flight_info << {
            itinerary_index: itinerary.id ,
            destination_code: eval(itinerary.info)[0][0][:destination],
            price:            eval(itinerary.info)[0][0][:price],

            origin_city:    eval(itinerary.info)[0][1][:origin_city],
            arrival_city:   eval(itinerary.info)[0][1][:arrival_city],
            departure_date: eval(itinerary.info)[0][1][:departure_date],
            arrival_date:   eval(itinerary.info)[0][1][:arrival_date],
            layovers:       eval(itinerary.info)[0][1][:layovers],
            duration:       eval(itinerary.info)[0][1][:duration],

            return_origin_city:    eval(itinerary.info)[0][2][:return_origin_city],
            return_arrival_city:   eval(itinerary.info)[0][2][:return_arrival_city],
            return_departure_date: eval(itinerary.info)[0][2][:return_departure_date],
            return_arrival_date:   eval(itinerary.info)[0][2][:return_arrival_date],
            return_layovers:       eval(itinerary.info)[0][2][:return_layovers],
            return_duration:       eval(itinerary.info)[0][2][:return_duration]
          }
        end
      end
    end
  end


