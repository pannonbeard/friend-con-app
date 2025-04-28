require "test_helper"

class GamingLibraryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gaming_library_index_url
    assert_response :success
  end
end
