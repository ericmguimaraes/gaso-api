require 'test_helper'

class StationRatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @station_rate = station_rates(:one)
  end

  test "should get index" do
    get station_rates_url, as: :json
    assert_response :success
  end

  test "should create station_rate" do
    assert_difference('StationRate.count') do
      post station_rates_url, params: { station_rate: { rate: @station_rate.rate, station_id: @station_rate.station_id } }, as: :json
    end

    assert_response 201
  end

  test "should show station_rate" do
    get station_rate_url(@station_rate), as: :json
    assert_response :success
  end

  test "should update station_rate" do
    patch station_rate_url(@station_rate), params: { station_rate: { rate: @station_rate.rate, station_id: @station_rate.station_id } }, as: :json
    assert_response 200
  end

  test "should destroy station_rate" do
    assert_difference('StationRate.count', -1) do
      delete station_rate_url(@station_rate), as: :json
    end

    assert_response 204
  end
end
