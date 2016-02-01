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

  #Set zeros hash, use zeros to calculate percentage differences in new readings
  def self.setZeros(daysAgo)
    @zeros = Hash.new
    for i in 0..WeatherDatum.attribute_names.length-1
      zero = WeatherDatum.limit(1).where(["created_at < ?", daysAgo.days.ago]).pluck(WeatherDatum.attribute_names.at(i)).first
      if(zero.nil?)
        zero = WeatherDatum.pluck(WeatherDatum.attribute_names.at(i)).last
      end
      @zeros[WeatherDatum.attribute_names.at(i)] = zero
    end
  end


  def self.getValue(value, daysAgo)
    data = WeatherDatum.limit(30).where(created_at: (Time.now - daysAgo.day)..Time.now).pluck(value)
    for i in 0..data.length-1
      if data[i].is_a? Numeric and @zeros[value].is_a? Numeric
        data[i] /= @zeros[value]
      end
    end
    data
  end

  def self.getValues(daysAgo)
    values = Hash.new
    self.setZeros(daysAgo)
    names = WeatherDatum.attribute_names
    for i in 0..names.length-1
       values[names.at(i)] = getValue(names[i], daysAgo)
    end
    values
  end
  #
  # def self.getFormattedValues(daysAgo)
  #   values = Array.new
  #
  # end




end
