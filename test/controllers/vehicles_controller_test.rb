require 'test_helper'

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vehicles_index_url
    assert_response :success
  end

  test "should get show" do
    get vehicles_show_url
    assert_response :success
  end

  test "should get owners" do
    get vehicles_owners_url
    assert_response :success
  end

  test "should get neighbourhoods" do
    get vehicles_neighbourhoods_url
    assert_response :success
  end

  test "should get manufacturers" do
    get vehicles_manufacturers_url
    assert_response :success
  end

  test "should get origins" do
    get vehicles_origins_url
    assert_response :success
  end

end
