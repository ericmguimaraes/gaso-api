require 'test_helper'

class ObdLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obd_log = obd_logs(:one)
  end

  test "should get index" do
    get obd_logs_url, as: :json
    assert_response :success
  end

  test "should create obd_log" do
    assert_difference('ObdLog.count') do
      post obd_logs_url, params: { obd_log: { car_id: @obd_log.car_id, data: @obd_log.data, mode: @obd_log.mode, parsed: @obd_log.parsed, pid: @obd_log.pid, status: @obd_log.status } }, as: :json
    end

    assert_response 201
  end

  test "should show obd_log" do
    get obd_log_url(@obd_log), as: :json
    assert_response :success
  end

  test "should update obd_log" do
    patch obd_log_url(@obd_log), params: { obd_log: { car_id: @obd_log.car_id, data: @obd_log.data, mode: @obd_log.mode, parsed: @obd_log.parsed, pid: @obd_log.pid, status: @obd_log.status } }, as: :json
    assert_response 200
  end

  test "should destroy obd_log" do
    assert_difference('ObdLog.count', -1) do
      delete obd_log_url(@obd_log), as: :json
    end

    assert_response 204
  end
end
