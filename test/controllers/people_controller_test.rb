require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get people_index_url
    assert_response :success
  end

  test "should get show" do
    get people_show_url
    assert_response :success
  end

  test "should get vehicles" do
    get people_vehicles_url
    assert_response :success
  end

  test "should get neighbourhoods" do
    get people_neighbourhoods_url
    assert_response :success
  end

end
