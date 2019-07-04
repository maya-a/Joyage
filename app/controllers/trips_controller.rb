class TripsController < ApplicationController
  def index
    @list = params[:list_destinations]
    @trips = Trip.where(search: params[:search_id])

    # @itineraries = @trips[0].itineraries
    @search = Search.find(params[:search_id])
    @destinations = []
    @coordinates = []
    @list.each_with_index do |id, i|
      @destinations << {
        city: Destination.find(id).d_city,
        IATA: Destination.find(id).dap_code,
        ppp: find_avg(@trips)[i]
      }

      @coordinates << {
        destination_lat: Destination.find(id).d_latitude,
        destination_lng: Destination.find(id).d_longitude
      }
      @search.origins.each do |origin|
        @coordinates << {
          origin_city:origin.name,
          origin_lat: origin.latitude,
          origin_lng: origin.longitude
      }
      end

    end
  end

  def show
    @trips = Trip.where(search_id: params[:search_id])
    raise
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
    #@tag = "https://source.unsplash.com/1600x900/?#{@cocktail.name.gsub(' ', '-')}"
  end

  def new

  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def find_avg(trips)
    avgs = []
    trips.each do |trip|
    sum = 0
      trip.itinerarys.each do |i|
        sum += eval(i.info)[0][0][:price].to_f
      end
      avgs << sum.fdiv(trip.itinerarys.length)
    end
    return avgs
  end

# eval(@trips[0].itineraries.first.info)[0][0][:price]
# eval(@trips[0].itineraries.first.info)[0][0][:destination]
  end
