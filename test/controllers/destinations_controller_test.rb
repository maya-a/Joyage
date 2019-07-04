require 'test_helper'

class DestinationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get destinations_show_url
    assert_response :success
  end

end
