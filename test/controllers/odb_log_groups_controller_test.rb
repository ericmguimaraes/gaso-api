require 'test_helper'

class OdbLogGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @odb_log_group = odb_log_groups(:one)
  end

  test "should get index" do
    get odb_log_groups_url, as: :json
    assert_response :success
  end

  test "should create odb_log_group" do
    assert_difference('OdbLogGroup.count') do
      post odb_log_groups_url, params: { odb_log_group: { car_id: @odb_log_group.car_id } }, as: :json
    end

    assert_response 201
  end

  test "should show odb_log_group" do
    get odb_log_group_url(@odb_log_group), as: :json
    assert_response :success
  end

  test "should update odb_log_group" do
    patch odb_log_group_url(@odb_log_group), params: { odb_log_group: { car_id: @odb_log_group.car_id } }, as: :json
    assert_response 200
  end

  test "should destroy odb_log_group" do
    assert_difference('OdbLogGroup.count', -1) do
      delete odb_log_group_url(@odb_log_group), as: :json
    end

    assert_response 204
  end
end
