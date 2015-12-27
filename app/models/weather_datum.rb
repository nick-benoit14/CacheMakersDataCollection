#Set fields from data passed from server

require 'open-uri'

class WeatherDatum < ActiveRecord::Base

  
  def initialize
    #Hit Test Server
    #if data received then log data point

    super
    puts "Initialize Weather Datum"
    response = open('http://localhost:8080').read
    @hsh = JSON.parse(response)

    setVal()
  end

  private
    def setVal
      @hsh.each do |key, value|
        print key, " is ", value, "\n"
        self.send(key + '=', value)
      end
    end

end
