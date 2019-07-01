class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    @search = Search.new(search_params)
    points = []
    end



  private

  def search_params
    params.require(:search).permit(:max_budget,:dep_date,:ret_date, :origin)
  end
end


