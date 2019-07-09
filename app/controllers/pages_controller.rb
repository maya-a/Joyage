class PagesController < ApplicationController
  def home
  end

  def thankyou
    @date = Search.last[:dep_date]

  end
end
