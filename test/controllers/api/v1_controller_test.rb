require "test_helper"

class Api::V1ControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get api_v1_list_url
    assert_response :success
  end
end
