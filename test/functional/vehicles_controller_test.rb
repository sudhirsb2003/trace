require 'test_helper'

class VehiclesControllerTest < ActionController::TestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post :create, vehicle: { driver_name: @vehicle.driver_name, end_point: @vehicle.end_point, not_in_use: @vehicle.not_in_use, start_point: @vehicle.start_point, user_id: @vehicle.user_id, vehicle_make: @vehicle.vehicle_make, vehicle_name: @vehicle.vehicle_name, vehicle_number: @vehicle.vehicle_number }
    end

    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should show vehicle" do
    get :show, id: @vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle
    assert_response :success
  end

  test "should update vehicle" do
    put :update, id: @vehicle, vehicle: { driver_name: @vehicle.driver_name, end_point: @vehicle.end_point, not_in_use: @vehicle.not_in_use, start_point: @vehicle.start_point, user_id: @vehicle.user_id, vehicle_make: @vehicle.vehicle_make, vehicle_name: @vehicle.vehicle_name, vehicle_number: @vehicle.vehicle_number }
    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete :destroy, id: @vehicle
    end

    assert_redirected_to vehicles_path
  end
end
