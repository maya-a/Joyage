class TripsController < ApplicationController
  def index
    @trips = Trip.where.not(latitude: nil, longitude: nil)

    @markers = @trips.map do |trip|
      {
        lat: 32.080087     #trip.latitude,
        lng: 34.768222     #trip.longitude
      }
    end
  end

  def show
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
