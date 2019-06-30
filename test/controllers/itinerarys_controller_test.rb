require 'test_helper'

class ItinerarysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get itinerarys_index_url
    assert_response :success
  end

  test "should get show" do
    get itinerarys_show_url
    assert_response :success
  end

end
