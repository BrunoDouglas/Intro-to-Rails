require 'test_helper'

class OwnersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owners_index_url
    assert_response :success
  end

  test "should get show" do
    get owners_show_url
    assert_response :success
  end

  test "should get vehicles" do
    get owners_vehicles_url
    assert_response :success
  end

  test "should get neighbourhoods" do
    get owners_neighbourhoods_url
    assert_response :success
  end

end
