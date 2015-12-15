class CreateWeatherData < ActiveRecord::Migration
  def change
    create_table :weather_data do |t|
      t.float :windDir
      t.float :windSpeedMph
      t.float :twoMinWindDir
      t.float :twoMinWindSpeed
      t.float :tenMinWindDir
      t.float :tenMinWindSpeed
      t.float :windGustDir
      t.float :windGustMph
      t.float :humidity
      t.float :tempf
      t.float :rain
      t.float :dailyRain
      t.float :pressure

      t.timestamps null: false
    end
  end
end
