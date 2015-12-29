class DataVisController < ApplicationController

  def home
  end

  def weather_station
    @all_data = WeatherDatum.all
    @time = WeatherDatum.where(created_at: (Time.now - 1.day)..Time.now).pluck(:created_at)
    @wind_dir = WeatherDatum.where(created_at: (Time.now - 1.day)..Time.now).pluck(:windDir)
    @wind_speed_mph = WeatherDatum.where(created_at: (Time.now - 1.day)..Time.now).pluck(:windSpeedMph)
    @two_min_wind_dir = WeatherDatum.where(created_at: (Time.now - 1.day)..Time.now).pluck(:twoMinWindDir)
    @two_min_wind_speed = WeatherDatum.where(created_at: (Time.now - 1.day)..Time.now).pluck(:twoMinWindSpeed)
    @ten_min_wind_dir = WeatherDatum.where(created_at: (Time.now - 1.day)..Time.now).pluck(:twoMinWindDir)
    @ten_min_wind_speed = WeatherDatum.where(created_at: (Time.now - 1.day)..Time.now).pluck(:tenMinWindSpeed)
    @wind_gust_dir = WeatherDatum.where(created_at: (Time.now - 1.day)..Time.now).pluck(:windGustDir)
    @wind_gust_mph = WeatherDatum.where(created_at: (Time.now - 1.day)..Time.now).pluck(:windGustMph)
    @humidity = WeatherDatum.where(created_at: (Time.now - 1.day)..Time.now).pluck(:humidity)
    @tempf = WeatherDatum.where(created_at: (Time.now - 1.day)..Time.now).pluck(:tempf)
    @rain = WeatherDatum.where(created_at: (Time.now - 1.day)..Time.now).pluck(:rain)
    @dailyRain = WeatherDatum.where(created_at: (Time.now - 1.day)..Time.now).pluck(:dailyRain)
    @pressure = WeatherDatum.where(created_at: (Time.now - 1.day)..Time.now).pluck(:pressure)
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
