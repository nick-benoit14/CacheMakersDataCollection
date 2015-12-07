class DataVisController < ApplicationController

  def home
  end

  def weather_station
    @datapoints = DataPoint.all
  end


end
