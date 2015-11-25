class DataSeeker
  def SeekData
    response = open('http://localhost:8080').read
    DataPoint.create(data: response)
  end
  def Test
    puts "Test"
  end
end
