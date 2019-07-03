class TripsController < ApplicationController
  def index
    @list = params[:list_destinations]
    @trips = Trip.where(search: params[:search_id])

    # @itineraries = @trips[0].itineraries
    @search = Search.find(params[:search_id])
    @destinations = []
    @list.each_with_index do |id, i|
      @destinations << {
        city: Destination.find(id).d_city,
        IATA: Destination.find(id).dap_code,
        ppp: find_avg(@trips)[i]
      }
      end

    @trips = Trip.where.not(latitude: nil, longitude: nil)
    @markers = []
    2.times do
      @markers << {
        lat: 25.02424,
        lng: 41.81812,
        #infoWindow: render_to_string(partial: "infowindow", locals: { trip: trip }),
        #image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }

          @markers << {
        lat: 32.080351,
        lng: 34.767633,
        #infoWindow: render_to_string(partial: "infowindow", locals: { trip: trip }),
        #image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
            @markers << {
        lat: 10.080351,
        lng: 12.767633,
        #infoWindow: render_to_string(partial: "infowindow", locals: { trip: trip }),
        #image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end

  end

  def show

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
      trip.itineraries.each do |i|
        sum += eval(i.info)[0][0][:price].to_f
      end
      avgs << sum.fdiv(trip.itineraries.length)
    end
    return avgs
  end
end

# eval(@trips[0].itineraries.first.info)[0][0][:price]
# eval(@trips[0].itineraries.first.info)[0][0][:destination]
