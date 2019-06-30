class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    @search = Search.new(search_params)
    points = []
    end


  end

  private

  def search_params
    params.require(:search).permit(:max_budget,:dep_date,:ret_date, :origin)
  end
end


a = Geokit::LatLng.new(13.0627081,80.274658)
b = Geokit::LatLng.new(12.8550615,80.2264393)
m1 = a.midpoint_to(b)
m2 = b.midpoint_to(a)
if m1.distance_to( m2 ) > 0
  puts "Mid-points are separate"
else
  puts "Mid-points are the same location"
end
