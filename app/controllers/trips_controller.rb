class TripsController < ApplicationController
  def index
    @list = params[:list_destinations]
    @trips = Trip.where(search: params[:search_id])

    # @itineraries = @trips[0].itineraries
    @search = Search.find(params[:search_id])
    @destinations = []
    @coordinates = []
    @markers = []
    @list.each_with_index do |id, i|
      @destinations << {
        city: Destination.find(id).d_city,
        IATA: Destination.find(id).dap_code,
        ppp: find_avg(@trips)[i]
      }

      @coordinates << {
        lat: Destination.find(id).d_latitude,
        lng: Destination.find(id).d_longitude
      }
      @search.origins.each do |origin|
        @coordinates << {
          origin_city:origin.name,
          lat: origin.latitude,
          ng: origin.longitude
      }
      end

      @coordinates.each do |x|
        @markers << {lat: x[:lat], lng: x[:lng]
        }
        @search.origins.each do |origin|
          @markers << {lat: origin[:lat], lng: origin[:lng]
          }
        end
      end
    end
  end

  def show
    trip = Trip.find(params[:id])
      # getting first flight only
      @flight_info = {
        destination_code: eval(trip.itineraries[0].info)[0][0][:destination],
        price:            eval(trip.itineraries[0].info)[0][0][:price],

        origin_city:    eval(trip.itineraries[0].info)[0][1][:origin_city],
        arrival_city:   eval(trip.itineraries[0].info)[0][1][:arrival_city],
        departure_date: eval(trip.itineraries[0].info)[0][1][:departure_date],
        arrival_date:   eval(trip.itineraries[0].info)[0][1][:arrival_date],
        layovers:       eval(trip.itineraries[0].info)[0][1][:layovers],
        duration:       eval(trip.itineraries[0].info)[0][1][:duration],

        return_origin_city:    eval(trip.itineraries[0].info)[0][2][:return_origin_city],
        return_arrival_city:   eval(trip.itineraries[0].info)[0][2][:return_arrival_city],
        return_departure_date: eval(trip.itineraries[0].info)[0][2][:return_departure_date],
        return_arrival_date:   eval(trip.itineraries[0].info)[0][2][:return_arrival_date],
        return_layovers:       eval(trip.itineraries[0].info)[0][2][:return_layovers],
        return_duration:       eval(trip.itineraries[0].info)[0][2][:return_duration]
     }

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
end
# eval(@trips[0].itineraries.first.info)[0][0][:price]
# eval(@trips[0].itineraries.first.info)[0][0][:destination]
