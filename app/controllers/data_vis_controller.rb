class DataVisController < ApplicationController

  def index
    #@datapoints = DataPoint.all
  end

  def home
      @datapoints = DataPoint.all
  end


end
