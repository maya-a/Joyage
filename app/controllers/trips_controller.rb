class TripsController < ApplicationController
  def index
    @trips = Trip.all

    # @trips = Trip.where.not(latitude: nil, longitude: nil)
    # @markers = []
    # 3.times do
    #   @markers << {
    #     lat: 32.080351,
    #     lng: 34.767633,
    #     #infoWindow: render_to_string(partial: "infowindow", locals: { trip: trip }),
    #     #image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
    #   }
    # end

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


end

