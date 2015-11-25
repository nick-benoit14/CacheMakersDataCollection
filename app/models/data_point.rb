class DataPoint < ActiveRecord::Base
  def FetchData
    response = open('http://localhost:8080').read
    DataPoint.create(data: response)
    puts "Created DataPoint"
  end
end
