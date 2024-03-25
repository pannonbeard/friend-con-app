require "test_helper"

class RoleControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get role_new_url
    assert_response :success
  end
end
