require 'test_helper'

class WeatherDatumControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end


  test "should create WeatherDatum" do
    count = WeatherDatum.count

    get :create
    assert_response :success

    newcount = WeatherDatum.count
    assert ((newcount-= 1) == count)      #should add new WeatherDatum
  end

end
