class PagesController < ApplicationController
  def home
  end

  def thankyou
    @date = Search.last[:dep_date]
    @destination_city = params[:destination_city]

  end

  def about
  end
end
