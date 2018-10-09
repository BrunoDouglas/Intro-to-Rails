require 'test_helper'

class NeighbourhoodControllerTest < ActionDispatch::IntegrationTest
  test "should get vehicles" do
    get neighbourhood_vehicles_url
    assert_response :success
  end

end
