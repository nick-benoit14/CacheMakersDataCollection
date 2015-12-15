require 'open-uri'

class WeatherDatum < ActiveRecord::Base

  def initialize
    #Hit Test Server
    #if data received then log data point
    super
    puts "Initialize Weather Datum"
    response = open('http://localhost:8080').read
    @hsh = JSON.parse(response)
    #puts JSON.parse '{"Object":12, "test":12, "WHUT":13}'

    @hsh.each do |key, value|
      #print key, " is ", value, "\n"
      if key == "winddir"
         
      end
    end
  end

  private

  def isData()
  end

end
