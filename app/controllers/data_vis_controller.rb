class DataVisController < ApplicationController

  def home
      @datapoints = DataPoint.all
  end


end
