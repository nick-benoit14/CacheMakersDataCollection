class WeatherDatumController < ApplicationController

  protect_from_forgery

  def new
    data = WeatherDatum.new
    data.save
  end

  def index
    render :json => WeatherDatum.all
  end

  def create
    data = WeatherDatum.new
    data.save
  end

end
