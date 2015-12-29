class DataVisController < ApplicationController

  def home
  end

  def weather_station
    @all_data = WeatherDatum.all
    @time = WeatherDatum.pluck(:created_at)
    @wind_dir = WeatherDatum.pluck(:windDir)
    @wind_speed_mph = WeatherDatum.pluck(:windSpeedMph)
    @two_min_wind_dir = WeatherDatum.pluck(:twoMinWindDir)
    @two_min_wind_speed = WeatherDatum.pluck(:twoMinWindSpeed)
    @ten_min_wind_dir = WeatherDatum.pluck(:twoMinWindDir)
    @ten_min_wind_speed = WeatherDatum.pluck(:tenMinWindSpeed)
    @wind_gust_dir = WeatherDatum.pluck(:windGustDir)
    @wind_gust_mph = WeatherDatum.pluck(:windGustMph)
    @humidity = WeatherDatum.pluck(:humidity)
    @tempf = WeatherDatum.pluck(:tempf)
    @rain = WeatherDatum.pluck(:rain)
    @dailyRain = WeatherDatum.pluck(:dailyRain)
    @pressure = WeatherDatum.pluck(:pressure)
  end

# All variables
  # "windDir":120,
  # "windSpeedMph":60,
  # "twoMinWindDir":120,
  # "twoMinWindSpeed":40,
  # "tenMinWindDir":23,
  # "tenMinWindSpeed":123,
  # "windGustDir":60,
  # "windGustMph":120,
  # "humidity":80,
  # "tempf": 70,
  # "rain": 12,
  # "dailyRain": 5,
  # "pressure":800

end
