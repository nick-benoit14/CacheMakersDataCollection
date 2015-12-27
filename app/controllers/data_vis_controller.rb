class DataVisController < ApplicationController

  def home
  end

  def weather_station
    @datapoints = WeatherDatum.all
  end


end
