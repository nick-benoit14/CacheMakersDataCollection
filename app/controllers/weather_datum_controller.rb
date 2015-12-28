class WeatherDatumController < ApplicationController

  protect_from_forgery

  def new
    data = WeatherDatum.new
    data.save
  end

  def index
  end

  def create
    data = WeatherDatum.new
    data.save
  end

end
